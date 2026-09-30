from packager import package, setVersion

versions = ["1.21.6","1.21.11"]

for v in versions:
    setVersion(v)
    # package the main datapack
    package('Bedwars/', 'Bedwars_'+v+'.zip')
    # package the extras
    package('Bedwars_Extras/', 'Bedwars_Extras_'+v+'.zip')