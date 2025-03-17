## This Project refers to : [Project Description](https://teamsparta.notion.site/Ch-2-1b82dc3ef51480708c52c22b28f47d4b)

### The Project Setup
* In order to build a command line tool, it's better to follow the swift documentation instead of opening the XCode and select `Cli`. Using Swift Package Manager(SwiftPM), you can manage or import other libraries into your cli tools

* Each descriptions were followed by the [Doc](https://www.swift.org/getting-started/cli-swiftpm/)
* It is unnecessary to import [figlet]() as dependency, however it's good to practice.
* As other language, it is good to use argument parser to run the program, which is definitive way to run the program

### XCode Arguments Setup
* If you really want to test this program in XCode, which is unnecessary! You can follow the direction. 
`LearningSwiftCli` -> `Edit Scheme` -> `Arguments` -> Add all arguments you want to passed on launch (ex: `--input 1`).

### List of Command Options
* commands are following fashion. 


### Dependency: Arugment Parser
* Helper to takes the arguments from command line.