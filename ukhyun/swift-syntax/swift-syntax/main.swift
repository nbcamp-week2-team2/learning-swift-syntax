//
//  main.swift
//  swift-syntax
//
//  Created by GO on 3/18/25.
//

import Foundation


// 상속을 사용하여 기능을 추가하는 것과, 프로토콜 채택을 통해서 기능을 추가하는 것의 장단점, 차이를 고민하고 주석으로 서술해주세요.
/*
상속
    장점:
    - 코드 재사용성 향상
    - 계층적 구조 표현에 적합
    - 부모 클래스의 기능을 확장하기 용이함

    단점:
    - 단일 상속만 가능 (다중 상속 불가)
    - 클래스에만 적용 가능 (구조체, 열거형 불가)
    - 타입 간 강한 결합도 발생
    - 상속 계층이 깊어질수록 유지보수 어려움
 
프로토콜
    장점:
    - 다중 채택 가능 (여러 프로토콜 동시 구현)
    - 클래스, 구조체, 열거형 모두 적용 가능
    - 타입 간 결합도 낮음 (유연한 설계)
    - 프로토콜 확장으로 기본 구현 제공 가능
    
    단점:
    - 기본 구현이 없으면 모든 요구사항을 직접 구현해야 함
    - 저장 프로퍼티 정의 불가
    - 상속보다 초기 설계가 복잡할 수 있음
 
차이
    상속: 한 클래스는 하나의 부모 클래스만 상속 가능
    프로토콜: 프로토콜은 여러 개의 프로토콜을 동시에 상속 가능
 */

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

let hybricCar = HybridCar(brand: "Lexus", model: "es300h", modelYear: "2025")

print("하이브리드 차량 =====")
hybricCar.switchEngine(to: ElectricEngine())
hybricCar.regenerativeBreak()
hybricCar.engine.stop()
hybricCar.switchEngine(to: HydrogenEngine())
hybricCar.engine.stop()

let electricCar = ElectricCar(brand: "Tesla", model: "Cyber Truck", modelYear: "2023")

print("전기차 ====")
electricCar.charge()
electricCar.engine.stop()

let gasolineCar = Car(brand: "Hyundai", model: "Grandeur", modelYear: "2025", engine: GasolineEngine())

print("가솔린 차량 =====")
gasolineCar.refuel()
gasolineCar.engine.stop()
