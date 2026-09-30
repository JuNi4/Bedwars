class Version:

    def __init__(self, v:str) -> None:
        self.major = 0
        self.minor = 0
        self.patch = 0


        e = v.split(".")
        if len(e) == 1:
            self.major = 1
            self.minor = int(e[0])
            self.patch = 0
        if len(e) == 2:
            self.major = 1
            self.minor = int(e[0])
            self.patch = int(e[1])
        if len(e) == 3:
            self.major = int(e[0])
            self.minor = int(e[1])
            self.patch = int(e[2])
            

    def __eq__(self, other) -> bool:
        ema = self.major == other.major
        emi = self.minor == other.minor
        epa = self.patch == other.patch
        return ema and emi and epa

    def __gt__(self, other):
        ema = self.major >= other.major
        emi = self.minor >= other.minor
        epa = self.patch >= other.patch
        gma = self.major > other.major
        gmi = self.minor > other.minor
        gpa = self.patch > other.patch

        return gma or (ema and gmi) or (ema and emi and gpa)

    def __ge__(self, other):
        return self > other or self == other

    def __lt__(self, other):
        ema = self.major <= other.major
        emi = self.minor <= other.minor
        epa = self.patch <= other.patch
        lma = self.major < other.major
        lmi = self.minor < other.minor
        lpa = self.patch < other.patch

        return lma or (ema and lmi) or (ema and emi and lpa)
    
    def __le__(self, other):
        return self < other or self == other


    def __str__(self) -> str:
        return f"{self.major}.{self.minor}.{self.patch}"