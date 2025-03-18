//
//  main.swift
//  swift-syntax
//
//  Created by GO on 3/18/25.
//

import Foundation

/*
 두 개의 Int 값을 파라미터로 받고, 하나의 String 값을 반환하는 클로저
 */

// MARK: - 필수 1번

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
