import os
import sys
import zipfile
import precompiler

VERSION = "26.3"


# zips the datapack directory
def __zipdir(path:str, ziph:zipfile.ZipFile):
    if not path.endswith("/"): path += "/"
    # ziph is zipfile handle
    for root, dirs, files in os.walk(path):
        for file in files:
            if file.endswith(".md") or file.endswith(".py"): continue

            # trim the file if it is a function
            if file.endswith(".mcfunction"):
                with open(os.path.join(root, file), "r") as f:
                    lines = f.read().split("\n")
                    output = ""
                    i = -1
                    while (i+1) < len(lines):
                        i += 1
                        l = lines[i]

                        # strip string
                        l = l.strip()

                        # skip comments
                        if l.startswith("# "): continue
                        if l == "": continue

                        # convert multi line commands to single line
                        if l.endswith("\\"):
                            output += l[:-1] # add line without backslash
                        else:
                            output += l + "\n"

                    # second pass for precompiler
                    lines = output.split("\n")
                    output = ""
                    i = -1

                    pre = precompiler.Precompiler()
                    pre.setVar("version::version", VERSION)

                    while (i+1) < len(lines):
                        i += 1
                        l = lines[i]

                        r = pre.get(l + "\n")

                        if pre.requiresMore():
                            continue

                        output += r

                    # write the file
                    ziph.writestr(os.path.relpath(os.path.join(root[len(path):], file)), output)


            # add the file otherwise
            else:
                ziph.write(os.path.join(root, file),
                           os.path.relpath(os.path.join(root[len(path):], file),
                           os.path.join(path, '..')))


def package(dir, out):
    with zipfile.ZipFile(out, 'w', zipfile.ZIP_DEFLATED) as zipf:
        __zipdir(dir, zipf)

def setVersion(ver):
    global VERSION
    VERSION = ver