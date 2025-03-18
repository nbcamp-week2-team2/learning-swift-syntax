//
//  main.swift
//  swift-syntax
//
//  Created by GO on 3/18/25.
//

import Foundation

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
let numbers = [1, 2, 3, 4, 5]
let result = numbers.map { String($0) }
print(result)

// 주어진 입력값을 고차함수를 체이닝하여 주어진 출력값이 나오도록 구현
let input = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let output = input.filter { $0 % 2 == 0 }.map { String($0) }

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
