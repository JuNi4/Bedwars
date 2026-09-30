from version import Version

TOKEN_NONE = 0
TOKEN_NUMBER = 1
TOKEN_STRING = 2
TOKEN_NAME = 3
TOKEN_COLON = 4 # :3
TOKEN_BRACKET_OPEN = 5
TOKEN_BRACKET_CLOSE = 6

class Token:

    def __init__(self, type = TOKEN_NONE, value: None | str | int | float = None) -> None:
        self.type = type
        self.value = value



VARIABLE_NONE = 0
VARIABLE_NUMBER = 1
VARIABLE_STRING = 2
VARIABLE_NAMESPACE = 3
VARIABLE_FUNCTION = 4

class Variable:

    def __init__(self, type = VARIABLE_NONE, data: None | int | float | str | dict = None, read_only = False) -> None:
        self.type = type
        self.data = data
        self.read_only = read_only



def _variable_isAbove(self, version):
    cur = Version(self.getVar("version::version").data)
    return cur > Version(version)
def _variable_isBelow(self, version):
    cur = Version(self.getVar("version::version").data)
    return cur < Version(version)
def _variable_isEqual(self, version):
    cur = Version(self.getVar("version::version").data)
    return cur == Version(version)

def _line(self, *args):
    self._out += str(*args) + "\n"

class Precompiler:

    _start_syntax = "#:"

    def __init__(self) -> None:
        self._more = False
        self._out = ""
        self._if_level = 0
        self._ignore_at = 0
        self._vars = {
            # default vars
            "version": Variable(VARIABLE_NAMESPACE, {
                "isBelow": Variable(VARIABLE_FUNCTION, _variable_isBelow, True),
                "isAbove": Variable(VARIABLE_FUNCTION, _variable_isAbove, True),
                "is": Variable(VARIABLE_FUNCTION, _variable_isEqual, True),
                "isEqual": Variable(VARIABLE_FUNCTION, _variable_isEqual, True),
                "version": Variable(VARIABLE_STRING, "26.3", True)
            }, True),
            "print": Variable(VARIABLE_FUNCTION, lambda *args : print(*args[1:]), True),
            "line": Variable(VARIABLE_FUNCTION, _line, True),
        }

    def requiresMore(self) -> bool:
        return self._more

    def get(self, line) -> str:
        if line.startswith(Precompiler._start_syntax) and not line.startswith(Precompiler._start_syntax + " "):
            cmd = line.split(" ")[0][len(Precompiler._start_syntax):].replace("\n", "")
            rest = line[len(Precompiler._start_syntax) + len(cmd) + 1: -1]

            is_func = cmd.startswith(":")
            
            if is_func:
                if self._if_level == 0 or (self._ignore_at < self._if_level or self._ignore_at == 0):
                    self._eval(self._parse(cmd[1:] + " " + rest))
                return ""
            else:
                if cmd == "if":
                    self._if_level += 1
                    v = self._eval(self._parse(rest))
                    if not v:
                        self._ignore_at = self._if_level
                    self._more = True
                    return ""
                elif cmd == "elseif":
                    v = self._eval(self._parse(rest))
                    if not v:
                        self._ignore_at = self._if_level
                    return ""
                elif cmd == "else":
                    self._ignore_at = self._if_level if self._ignore_at == 0 else 0
                    return ""
                elif cmd == "endif":
                    self._more = False
                    if self._ignore_at == self._if_level:
                        self._ignore_at = 0
                    self._if_level -= 1

                    if self._if_level == 0:
                        r = self._out
                        self._out = ""
                        return r
                    return ""


            return ""
        
        else:
            if self._if_level == 0:
                return line
            elif (self._ignore_at > self._if_level or self._ignore_at == 0):
                self._out += line
                return ""
            return ""


    @staticmethod
    def _isAlpha(c:str):
        i = ord(c)
        return i >= ord('a') and i <= ord('z') or\
               i >= ord('A') and i <= ord('Z') or\
               c == "_" or c == ":"

    @staticmethod
    def _isNumeric(c:str):
        i = ord(c)
        return i >= ord('a') and i <= ord('z') or\
                i >= ord('A') and i <= ord('Z') or\
                c == "_"

    @staticmethod
    def _isAlphaNumeric(c:str):
        return Precompiler._isAlpha(c) or Precompiler._isNumeric(c)


    @staticmethod
    def _parse(data:str) -> list[Token]:
        out = []


        i = 0
        while i < len(data):
            c = data[i]
            i += 1

            if c == " " or c == "\t" or c == "\n":
                continue

            # colons
            #elif c == ":":
            #    out.append(Token(TOKEN_COLON, ":"))

            # bracket open
            elif c == "(":
                out.append(Token(TOKEN_BRACKET_OPEN, "("))

            # bracket close
            elif c == ")":
                out.append(Token(TOKEN_BRACKET_CLOSE, ")"))

            elif c == '"':
                val = ""
                while i < len(data) and data[i] != '"':
                    val += data[i]
                    i += 1
                i += 1
                out.append(Token(TOKEN_STRING, val))

            # name values
            elif Precompiler._isAlpha(c):
                val = c
                while i < len(data) and Precompiler._isAlphaNumeric(data[i]):
                    val += data[i]
                    i += 1
                out.append(Token(TOKEN_NAME, val))

            # numbers
            elif Precompiler._isNumeric(c):
                val = c
                while i < len(data) and Precompiler._isNumeric(data[i]):
                    val += data[i]
                    i += 1
                out.append(Token(TOKEN_NUMBER, float(val)))


        return out


    def getVar(self, name) -> Variable:
        levels = []
        l = ""
        for c in name:
            if c == ":":
                if len(l) > 0:
                    levels.append(l)
                    l = ""
            else:
                l += c
        if len(l) > 0:
            levels.append(l)

        if levels[0] not in self._vars:
            print("Tried to access variable wich does not exist:", name)
            exit()

        d = self._vars[levels[0]]
        for l in levels[1:]:
            if d.type != VARIABLE_NAMESPACE:
                print("Tried to access variable", l, "in", name, "that is not a namespace")
                exit()
            if l not in d.data:
                print("Tried to access variable wich does not exist:", name)
                exit()

            d = d.data[l]

        return d


    def setVar(self, name, value):
        levels = []
        l = ""
        for c in name:
            if c == ":":
                if len(l) > 0:
                    levels.append(l)
                    l = ""
            else:
                l += c
        if len(l) > 0:
            levels.append(l)

        if levels[0] not in self._vars:
            print("Tried to access variable wich does not exist:", name)
            exit()

        d = self._vars[levels[0]]
        for l in levels[1:]:
            if d.type != VARIABLE_NAMESPACE:
                print("Tried to access variable", l, "in", name, "that is not a namespace")
                exit()
            if l not in d.data:
                print("Tried to access variable wich does not exist:", name)
                exit()

            d = d.data[l]

        d.data = value


    def _eval(self, tokens:list[Token]):
        i = 0
        while i < len(tokens):
            t = tokens[i]
            i += 1

            if t.type == TOKEN_NAME:
                var = self.getVar(t.value)

                if var.type != VARIABLE_FUNCTION and tokens[i].type == TOKEN_BRACKET_OPEN:
                    print("Tried to call non function",t.value)
                    exit()

                if var.type == VARIABLE_FUNCTION and tokens[i].type == TOKEN_BRACKET_OPEN:
                    i += 1
                    # collect arguments
                    args = []
                    ai = 0
                    while i < len(tokens) and tokens[i].type != TOKEN_BRACKET_CLOSE:
                        args.append(tokens[i].value)
                        i += 1

                    return var.data(self, *args)

