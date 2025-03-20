import ArgumentParser

@main
struct LearningSwiftCLI: ParsableCommand {
    static let configuration = CommandConfiguration(
        abstract: "Swift Learning",
        usage: "LearningSwiftCLI <subcommands> <args>",
        subcommands: [Closure.self, MapUsage.self, ArrayComprehension.self,
                      ClassImpl.self]
    )
}

extension LearningSwiftCLI {
    struct Closure: ParsableCommand {
        @Argument(help: "Closure - Args must be Int, and two integer is allowed")
        var args: [Int]
        static let configuration = CommandConfiguration(commandName: "closure")
        func run() throws {
            if args.count < 1 || args.count > 2 {
                print("Arguments must be two integers")
            }
            closure(arr: args)
        }
    }
}

extension LearningSwiftCLI {
    struct MapUsage: ParsableCommand {
        static let configuration = CommandConfiguration(commandName: "map")
        @Argument(help: "Map - Args must be Int")
        var args: [Int]
        func run() throws {
            usageOfMap(arr: args)
        }
    }
}

extension LearningSwiftCLI {
    struct ArrayComprehension: ParsableCommand {
        static let configuration = CommandConfiguration(commandName: "arr")
        @Argument(help: "Arr - Args must be String or Int")
        var args: [String] // Default
        func run() throws {
            if args.allSatisfy({ Int($0) != nil }) {
                let intArr = args.map { Int($0) }
                arrayComprehension(arr: intArr)
            } else {
                arrayComprehension(arr: args)
            }
        }
    }
}

extension LearningSwiftCLI {
    struct ClassImpl: ParsableCommand {
        static let configuration = CommandConfiguration(commandName: "class")
        func run() throws {
            classImpl()
        }
    }
}

func closure(arr: [Int]) {
    let sum:(Int, Int) -> String = { return String("Total Sum: \($0) + \($1)") }
    let result = sum(arr[0], arr[1])
    print("Result of Closure  : \(result)\n")
        
    print("Function Signature : calculate (_ op: (Int, Int) -> String ) ")
    func calculate(_ op: (Int, Int) -> String) {
        print("Result of calculate: \(op(arr[0], arr[1]))\n")
    }
    calculate(sum)
}
    
func usageOfMap(arr: [Int]) {
    let result = arr.map { String($0) }
    print("Result Array    : \(result)")
    
    print("Input Array is  : \(arr)")
    let output = arr.filter { $0 % 2 == 0 }.map { String($0) }
    print("Output Array is : \(output)\n")
    
    // Custom High-Order Function
    func myMap(_ arr: [Int], _ transform: (Int) -> String) -> [String] {
        var res: [String] = []
        for elm in arr {
            res.append(transform(elm))
        }
        return res
    }
    
    let resultHighOrder = myMap(arr) { String($0) }
    print("Results of High Order Func : \(resultHighOrder)")
}
    
func arrayComprehension<T>(arr: [T]) {
    /// https://www.reddit.com/r/swift/comments/4hjgkk/swift_string_access_odd_or_even_characters/
    func a(_ arr:[Int]) -> [Int] {
        return arr.enumerated().filter { $0.0 % 2 == 0}.map { $0.1 }
    }
    
    func b(_ arr: [String]) -> [String] {
        return arr.enumerated().filter { $0.0 % 2 == 0}.map { $0.1 }
    }
    
    func c<Y>(_ arr: [Y]) -> [Y] {
        return arr.enumerated().filter { $0.0 % 2 == 0}.map { $0.1 }
    }
    
    func d<C: Numeric>(_ arr: [C]) -> [C] {
        return arr.enumerated().filter { $0.0 % 2 == 0}.map { $0.1 }
    }
    
    if let intArr = arr as? [Int] {
        print("Function Signature : a(_ arr:[Int]) -> [Int]")
        print("\(a(intArr))\n")
    } else if let strArr = arr as? [String] {
        print("Function Signature : b(_ arr:[String]) -> [String]")
        print("\(b(strArr))\n")
    } else {
        // Generic
        print("Function Signature: c<Y> (_ arr:[Y]) -> [Y]")
        print("\(c(arr))\n")
    
        print("Function Signature: d<C: Numeric> (_ arr:[C]) -> [C]")
        if let numericArr = arr as? [any Numeric] {
            let convertArr = numericArr.compactMap { value -> Double? in
                if let doubleValue = value as? Double {
                    return doubleValue
                } else if let intValue = value as? Int {
                    return Double(intValue)
                } else if let floatValue = value as? Float {
                    return Double(floatValue)
                } else {
                    print("Failed to Convert to Any Value in Numeric")
                    return nil
                }
            }
            print("\(d(convertArr))")
        }
    }
}
    
func classImpl() {
    // Protocol 채택하면, 코드의 길어지지만, 기능의 확장성은 넓어져갑니다. 그 의미는 어느 정도의 상속의 특징을 물려받지만,
    //                  하지만 계층 구조를 파악하기 어려울 가능성도 있음
    // Inheritance: 다중상속 가능 -> 모든 Child 가 다 물려받고, 심지어 쓸데 없는 메모리를 잡아먹을수 있음.
    // 어찌됬든 목적에 맞게 적절하게 사용
    let hybridCar = HybridCar(brand: "Nissan", model: "Altima", yearMade: "2021")
    let electricalEngine = ElectricEngine(type: "Electric")
    hybridCar.switchEngine(to: electricalEngine)
}

