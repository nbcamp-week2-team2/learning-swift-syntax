//
//  main.swift
//  LearningSwiftSyntax
//
//  Created by 정근호 on 3/17/25.
//

import Foundation

// MARK: - 필수문제 1
//- [ ]  두 개의 Int 값을 파라미터로 받고, 하나의 String 값을 반환하는 클로저를 설계해주세요.
//- 클로저 내부에서는 두 정수를 더한 후, "두 수의 합은 {합계} 입니다"라는 문자열을 반환합니다.
//- [ ]  이 클로저를 상수 sum에 저장하고, 정확한 타입을 명시해주세요.
//- [ ]  sum을 호출하는 코드를 작성해주세요. (파라미터로 전달하는 값은 임의로 선택)
//- [ ]  위에서 정의한 sum과 동일한 타입의 클로저를 파라미터로 받고, 반환 값이 없는(void) 함수 calculate를 작성해주세요.
//1. (조건) calculate 함수 구현 내에서는 파라미터로 전달받은 클로저를 호출하는 코드를 포함해야합니다.
print("< 필수 문제 1 >")
let sum: (Int, Int) -> String = {
    return "두 수의 합은 \($0 + $1)입니다."
}

print(sum(5, 8))


func calculate(_ sum: (Int, Int) -> String) {
    print(sum(1, 2))
}

calculate(sum)


// MARK: - 필수문제 2
print("\n< 필수 문제 2 >")
let numbers = [1, 2, 3, 4, 5]

//아래 forEach 문을 map 을 사용하는 코드로 변환해주세요.
//var result = [String]()
//
//for number in numbers {
//    result.append(number)
//}

var result: [String] = numbers.map { String($0) }
print(result)


// 주어진 입력값을 고차함수를 체이닝하여 주어진 출력값이 나오도록 구현해주세요.
let input = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let output = input.filter { $0 % 2 == 0 }.map { String($0) }
print(output)


//이제 고차함수를 직접 만들어 봅니다.
//함수명: myMap
//파라미터는 2개 입니다.
//배열: [Int]
//변환 클로저: (Int) → String
//반환 값은 1개 입니다.
//[String]
func myMap(_ arr: [Int], _ closure: (Int) -> String) -> String {
    var mapped = String()
    for element in arr {
        mapped.append(closure(element))
    }
    return mapped
}

let myMapResult = myMap([1, 2, 3, 4, 5]) {
    String($0)
}

print("myMap: \(result)") // ["1", "2", "3", "4", "5"]



// MARK: - 필수문제 3
print("\n < 필수 문제 3 >")
//- [ ]  Int 배열의 짝수번째 요소를 제거해서 반환하는 함수 `a` 를 작성해주세요.
func a (_ arr: [Int]) -> [Int] {
    var array = [Int]()
    for i in arr.indices {
        if (i+1) % 2 == 0 { continue }
        array.append(arr[i])
    }
    return array
}
let arrA = [1, 2, 3, 4, 5]
print(a(arrA))

//- [ ]  String 배열의 짝수번째 요소를 제거해서 반환하는 함수 `b` 를 작성해주세요.
func b (_ arr: [String]) -> [String] {
    var array = [String]()
    for i in arr.indices {
        if (i+1) % 2 == 0 { continue }
        array.append(arr[i])
    }
    return array
}
let arrB = ["가", "나", "다", "라", "마"]
print(b(arrB))

//- [ ]  위 두 함수를 하나의 함수로 대체할 수 있는 방법을 고민해보고, 함수 `c` 로 작성해주세요.
func c<T> (_ arr: [T]) -> [T] {
    var array = [T]()
    for i in arr.indices {
        if (i+1) % 2 == 0 { continue }
        array.append(arr[i])
    }
    return array
}
let arrC1 = [1, 2, 3, 4, 5]
let arrC2 = ["가", "나", "다", "라", "마"]
print(c(arrC1))
print(c(arrC2))

// .filter
func cWithFilter<T> (_ arr: [T]) -> [T] {
    let array = arr.enumerated()
        .filter { $0.0 % 2 == 0 }
        .map { $0.1 }
    return array
}
print("withFilter: \(cWithFilter(arrC2))")

//- [ ]  함수 `c` 에  Numeric 프로토콜 요소를 가진 배열만 사용할 수 있는 함수 `d` 를 작성해주세요.
func d<T: Numeric> (_ arr: [T]) -> [T] {
    var array = [T]()
    for i in arr.indices {
        if (i+1) % 2 == 0 { continue }
        array.append(arr[i])
    }
    return array
}




// MARK: - 도전문제 1
//- [ ]  Base Class `Car` 를 설계해주세요.
//- 4가지의 상태를 정의해주세요.
//- 브랜드, 모델, 연식
//- 모두 String 타입입니다.
//- 엔진
//- Engine 이라는 커스텀 타입으로 정의해주세요.
//- 1개의 동작을 정의해주세요.
//- 운전하기
//- 동작 예시) “Car 주행 중…”  출력
//- 추가하고 싶은 상태와 동작은 마음껏 추가해주세요.
//- stop(), charge(), refuel() 등..
print("\n< 도전 문제 1 >")

protocol Engine {
    func drive()
    func stop()
}

class Car {
    var brand: String
    var model: String
    var year: String
    var engine: Engine
    
    init(brand: String, model: String, year: String, engine: Engine) {
        self.brand = brand
        self.model = model
        self.year = year
        self.engine = engine
    }
    
    private func drive() {
        print("주행 중...")
    }
    
    private func stop() {
        print("정지")
    }
    
    private func refuel() {
        print("기름을 다 채웠습니다.")
    }
}


//- [ ]  `Car` 를 상속한 `ElectricCar` 를 설계해주세요.
//- ElectricEngine 타입의 Engine 을 사용해야합니다.
struct ElectricEngine: Engine {
    func drive() {
        print("ElectricCar 주행 중...")
    }

    func stop() {
        print("ElectricCar 정지")
    }
    
}

class ElectricCar: Car {
    
    init(brand: String, model: String, year: String, engine: ElectricEngine) {
        super.init(
            brand: brand,
            model: model,
            year: year,
            engine: engine
        )
    }
    
    func charge() {
       print("충전이 완료되었습니다.")
    }
}

//- [ ]  `Car` 를 상속한 `HybridCar` 를 설계해주세요.
//- 새로운 엔진 타입 `HydrogenEngine` 을 정의해주세요.
//- HybridCar 에는 기존 Car 에 없던 새로운 동작이 추가됩니다.
//- 엔진을 런타임에 바꿀 수 있는 `switchEngine(to:)` 입니다.
struct HybridEngine: Engine {
    func drive() {
        print("HybridCar 주행 중...")
    }
    
    func stop() {
        print("HybridCar 정지")
    }
    
}

class HybridCar: Car {
    
    init(brand: String, model: String, year: String, engine: HybridEngine) {
        super.init(
            brand: brand,
            model: model,
            year: year,
            engine: engine
        )
    }
    
    func switchEngine(to newEngine: Engine) {
        engine = newEngine
        print("엔진이 바꼈습니다.")
    }
}

//- [ ]  `HybridCar` 인스턴스를 생성하고, `switchEngine(to:)` 를 호출하여 서로 다른 타입의 엔진으로 교체하는 코드를 작성해주세요.
let hybridCar = HybridCar(
    brand: "A",
    model: "Ailo",
    year: "2025",
    engine: HybridEngine()
)
hybridCar.engine.drive()
let electricEngine = ElectricEngine()
hybridCar.switchEngine(to: electricEngine)
hybridCar.engine.drive()
print(hybridCar.engine)


//- [ ]  상속을 사용하여 기능을 추가하는 것과, 프로토콜 채택을 통해서 기능을 추가하는 것의 장단점, 차이를 고민하고 주석으로 서술해주세요.
// 상속은 단일 상속만 가능하지만, 프로토콜은 한 번에 여러 프로토콜을 채택할 수 있음.
// 상속은 object 자체를 정의하지만, 프로토콜은 추상적인 object 행위를 정의.
// 상속은 서브 클래스가 수퍼 클래스의 구현 세부사항에 결합되게 되어 수퍼 클래스의 변경이 서브 클래스에 영향을 미칠 수 있음.
// 반면, 프로토콜은 다른 클래스는 고려하지 않고 변경할 클래스만 수정하면 되기에 변경이 쉬움.(결합도 감소, 유연성 증가)
