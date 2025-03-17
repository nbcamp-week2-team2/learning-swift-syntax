import Figlet
import ArgumentParser

@main
struct LearningSwiftCli: ParsableCommand {
    @Option(help: "Select Practice exercise to run (1-4) ")
    var input: Int
    
    init() {}
    
    mutating func run() throws {
        switch input {
        case 1:
            closure()
            break;
        case 2:
            usageOfMap()
            break;
        case 3:
            arrayComprehension()
        case 4:
            classImpl()
        default:
            print("Invalid Input")
            throw ExitCode.failure
        }
    }
    
    public func closure() {
    }
    
    public func usageOfMap() {
        
    }
    
    public func arrayComprehension() {
        
    }
    
    public func classImpl () {
        
    }
}
