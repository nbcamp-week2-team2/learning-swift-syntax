//
//  main.swift
//  swift-syntax
//
//  Created by GO on 3/18/25.
//

import Foundation

let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let words = ["가", "나", "다", "라", "마"]

// MARK: - 필수 1번

// 두 개의 Int 값을 파라미터로 받고, 하나의 String 값을 반환하는 클로저

// 클로저 저장할 상수 선언
let sum: (Int, Int) -> String = { num1, num2 in
    let result = num1 + num2
    return "두 수의 합은 \(result)입니다"
}
print(sum(3, 6))

// 클로저를 파라미터로 받는 함수
func calculate(_ closure: (Int, Int) -> String) {
    let result = closure(5, 6)
    print(result)
}

calculate(sum)

// MARK: - 필수 2번

// map 을 사용하는 코드로 변환
let result = numbers.map { String($0) }
print(result)

// 주어진 입력값을 고차함수를 체이닝하여 주어진 출력값이 나오도록 구현
let output = numbers.filter { $0 % 2 == 0 }.map { String($0) }

print(output)

// myMap
func myMap(_ array: [Int], conversion: (Int) -> String) -> [String] {
    var result = [String]()
    
    for i in array {
        result.append(conversion(i))
    }
    
    return result
}

let customMap = myMap([1,2,3,4,5]) { String($0) }
print(customMap)

// MARK: - 필수 3번

// Int 배열의 짝수번째 요소를 제거해서 반환하는 함수 a 를 작성

func a(_ array: [Int]) -> [Int] {
    return array.filter { $0 % 2 == 1 }.map { $0 }
}

print(a(numbers))

// String 배열의 짝수번째 요소를 제거해서 반환하는 함수 b 를 작성

func b(_ array: [String]) -> [String] {
    
    return array.enumerated().filter { $0.offset % 2 == 0 }.map { $0.element }
}

print(b(words))


// 두 함수를 하나의 함수로 대체할 수 있는 방법을 고민해보고, 함수 c 로 작성

// 모든 타입 가능
func c<T>(_ array: [T]) -> [T] {
    return array.enumerated().filter { $0.offset % 2 == 0 }.map { $0.element }
}

print(c(numbers), c(words))

// 함수 c 를 기반으로 수정하여 함수 d 를 작성 -> 파라미터의 타입을 << 'Numeric 프로토콜'을 준수하는 타입의 요소를 가진 배열 >> 로 변경

// Numeric(숫자) 타입만 가능 : https://developer.apple.com/documentation/swift/numeric
func d<Element: Numeric>(_ array: [Element]) -> [Element] {
    return array.enumerated().filter { $0.offset % 2 == 0 }.map { $0.element }
}

print(d(numbers))

// MARK: - 도전 1번

let hybricCar = HybridCar(brand: "Lexus", model: "es300h", modelYear: "2025", engine: HydrogenEngine())

hybricCar.switchEngine(to: ElectricEngine())
hybricCar.regenerativeBreak()

let electricCar = ElectricCar(brand: "Tesla", model: "Cyber Truck", modelYear: "2023", engine: ElectricEngine())

electricCar.charge()

