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
            break;
        case 4:
            classImpl()
            break;
        default:
            print("Invalid Input")
            throw ExitCode.failure
        }
    }
    
    public func closure() {
        let sum:(Int, Int) -> String = { return String("Total Sum: \($0) + \($1)") }
    
        let result = sum(5, 6)
        print("Result of Closure  : \(result)\n")
        
        print("Function Signature : calculate (_ op: (Int, Int) -> String ) ")
        func calculate(_ op: (Int, Int) -> String) {
            print("Result of calculate: \(op(8, 9))\n")
        }
        
        calculate(sum)
    }
    
    public func usageOfMap() {
        let numbers = [1, 2, 3, 4, 5]
        let result = numbers.map { String($0) }
        print("Result Array    : \(result)")
        
        // TODO: Take this as second arguments
        let input = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        print("Input Array is  : \(input)")
        let output = input.filter { $0 % 2 == 0 }.map { String($0) }
        print("Output Array is : \(output)\n")
        
        // Custom High-Order Function
        func myMap(_ arr: [Int], _ transform: (Int) -> String) -> [String] {
            var res: [String] = []
            for elm in arr {
                res.append(transform(elm))
            }
            return res
        }
        
        let resultHighOrder = myMap(numbers) { String($0) }
        print("Results of High Order Func : \(resultHighOrder)")
    }
    
    public func arrayComprehension() {
        print("Function Signature : a(_ arr:[Int]) -> [Int]")
        let arr = [1,2,3,4,5]
        let strArr = ["A", "B", "C", "D", "E"]
        // https://www.reddit.com/r/swift/comments/4hjgkk/swift_string_access_odd_or_even_characters/
        func a(_ arr:[Int]) -> [Int] {
            return arr.enumerated().filter { $0.0 % 2 == 0}.map { $0.1 }
        }
        print("\(a(arr))\n")
        
        print("Function Signautre: b(_ arr:[String]) -> [String]")
        func b(_ arr: [String]) -> [String] {
            return arr.enumerated().filter { $0.0 % 2 == 0}.map { $0.1 }
        }
        print("\(b(strArr))\n")
        
        // Generic
        print("Function Signature: c<T> (_ arr:[T]) -> [T]")
        func c<T>(_ arr: [T]) -> [T] {
            return arr.enumerated().filter { $0.0 % 2 == 0}.map { $0.1 }
        }
        print("\(c(strArr))")
        print("\(c(arr))\n")
        
        print("Function Signature: d<T: Numeric> (_ arr:[T]) -> [T]")
        func d<T: Numeric>(_ arr: [T]) -> [T] {
            return arr.enumerated().filter { $0.0 % 2 == 0}.map { $0.1 }
        }
    }
    
    public func classImpl () {
        // Protocol 채택하면, 코드의 길어지지만, 기능의 확장성은 넓어져갑니다. 그 의미는 어느 정도의 상속의 특징을 물려받지만,
        //                  하지만 계층 구조를 파악하기 어려울 가능성도 있음
        // Inheritance: 다중상속 가능 -> 모든 Child 가 다 물려받고, 심지어 쓸데 없는 메모리를 잡아먹을수 있음.
        // 어찌됬든 목적에 맞게 적절하게 사용
        let hybridCar = HybridCar(brand: "Nissan", model: "Altima", yearMade: "2021")
        let electricalEngine = ElectricEngine(type: "Electric")
        hybridCar.switchEngine(to: electricalEngine)
    }
}
