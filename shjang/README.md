## This Project refers to : [Project Description](https://teamsparta.notion.site/Ch-2-1b82dc3ef51480708c52c22b28f47d4b)

### Directory Tree
```bash
├── Package.resolved
├── Package.swift
├── README.md
└── Sources
    ├── Class.swift
    └── LearningSwiftCli.swift
```

### The Project Setup
* In order to build a command line tool, it's better to follow the swift documentation instead of opening the XCode and select `Cli`. Using Swift Package Manager(SwiftPM), you can manage or import other libraries into your cli tools

* Each descriptions were followed by the [Doc](https://www.swift.org/getting-started/cli-swiftpm/)
* It is unnecessary to import [figlet]() as dependency, however it's good to practice.
* As other language, it is good to use argument parser to run the program, which is definitive way to run the program

### XCode Arguments Setup
* If you really want to test this program in XCode, which is unnecessary! You can follow the direction. 
`LearningSwiftCli` -> `Edit Scheme` -> `Arguments` -> Add all arguments you want to passed on launch (ex: `--input 1`).

### List of Command Line Args
* commands are following fashion: 
```bash
swift run LearningSwiftCli closure 1 2
swift run LearningSwiftCli map 1 2 3 4 5
swift run LearningSwiftCli arr 1 2 3 4 5 6 7 
swift run LearningSwiftCli arr A B C D E
swift run LearningSwiftCli class
```

### !One Possible Downside!
* when commands are paresed, I haven't figured out how to handle generic type for incoming argument. One possible way is to set generic `ArrayComprehension`, then take the `args` as `[T]`. But the essential implementations are on `func arrayComprehension(arr:)` 

### Dependency: Arugment Parser
* Helper to takes the arguments from command line.