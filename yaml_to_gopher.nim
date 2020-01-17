from os import paramCount, paramStr, fileExists
import python

let appVersion = "0.0.1"

if paramCount() == 0:
    quit("yaml_to_gopher main.yaml")

if paramCount() > 1:
    quit("error: too many parameters")

let yamlFile = paramStr(1)

case yamlFile
of "-h","--h","/h","--help": quit("yaml_to_gopher converts yaml to gophermaps, see spec https://github.com/sirredbeard/yaml_to_gopher")
of "-v","--v","/v","--version": quit("version " & appVersion)

if fileExists(yamlFile) == false:
    quit("error: cannot find specified yaml input file: " & yamlFile)

if fileExists("gophermap") == true:
    quit("error: gophermap already exists in this folder")

