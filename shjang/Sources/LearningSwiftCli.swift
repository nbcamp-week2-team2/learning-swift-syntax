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
        print("------- Description: This is Simple Closure Practice -------\n")
 
        let sum:(Int, Int) -> String = { return String("Total Sum: \($0) + \($1)") }
    
        let result = sum(5, 6)
        print("Result of Closure is\n\(result)\n")
        
        print("Function Signature: calculate ( (Int, Int) -> String ) ")
        func calculate(_ op: (Int, Int) -> String) {
            print("Result of calculate: \(op(8, 9))")
        }
        
        calculate(sum)
        print("--------------------------- End -----------------------------")
    }
    
    public func usageOfMap() {
        print("------- Description: This is Map Practice -------\n")
        
        // Set 1.
        let numbers = [1, 2, 3, 4, 5]
        
        print("--------------------------- End -----------------------------")
        
    }
    
    public func arrayComprehension() {
        print("------- Description: This is Array Comprehension Practice -------\n")
    }
    
    public func classImpl () {
        print("------- Description: This is Class Implementation Practice -------\n")
    }
}
