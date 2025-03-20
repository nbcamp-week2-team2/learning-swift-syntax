//
//  main.swift
//  LearningSwiftSyntax
//
//  Created by 윤주형 on 3/18/25.
//

import Foundation

//MARK: -- 필수 문제 1
func getIntReturnString(firstParam: Int, secondParam: Int) -> String {
    return "두 수의 합은 {\(firstParam + secondParam)} 입니다."
}

let sum: String = getIntReturnString(firstParam: 1, secondParam: 2)
print(sum)

func calculate(closerParam: (Int, Int) -> String) -> Void {
    let a: Int = 3
    let b: Int = 4
    
    return print("value func calculate = \(closerParam(a, b))")
}

calculate(closerParam: getIntReturnString)

//MARK: -- 필수 문제 2
let numbers1 = [1, 2, 3, 4, 5]

var filteredArraay: [Int]
var result = [String]()

filteredArraay = numbers1.filter { Int in
    return Int % 2 == 0
}

result = filteredArraay.map({ num in
    return "\(num)"
})

print(result)


let numbers2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
print("입력:", numbers2, "-타입:", type(of: numbers2))

result = numbers2
    .filter{ $0 % 2 == 0}
    .map{String($0)}

print("출력:", result, "-타입:", type(of: result))

func mymap(_ intArray : [Int], _ convertToString: (Int) -> String) -> [String] {
    //인트 배열 map으로 String으로 다 바꾸기
    var stringArray: [String] = []
    intArray.forEach { Int in
        stringArray.append(convertToString(Int))
    }
    
    return stringArray
}

let customMapResult = mymap([1, 2, 3, 4, 5]) {
    String($0)
}

print(customMapResult)

//MARK: -- 필수 문제 3

func a(in intArray: [Int]) -> [Int] {
    var fixedStringArray: [Int] = []
    
    for (index, int) in intArray.enumerated() {
        if index % 2 == 0 {
            fixedStringArray.append(int)
        }
    }
    return fixedStringArray
}

let removeFromIntArray = a(in: numbers1)
print(#fileID, #function, #line, "\(removeFromIntArray)")


func b(in stringArray: [String]) -> [String] {
    var fixedStringArray: [String] = []
    
    for (index, char) in stringArray.enumerated() {
        if index % 2 == 0 {
            fixedStringArray.append(char)
        }
    }
    return fixedStringArray
}

let originStringArray: [String] = ["가", "나", "다", "라", "마"]
let answerRemoveStringEnumElement = b(in: originStringArray)
print(#fileID, #function, #line, "\(answerRemoveStringEnumElement)")


func c(in anyArray: [Any]) -> [Any] {
    var fixedArray: [Any] = []
    
    fixedArray = anyArray.enumerated()
        .filter{ $0.offset % 2 == 0}
        .map{ $0.element }
    
    return fixedArray
}

print(#fileID, #function, #line, "\(c(in: numbers1))")
print(#fileID, #function, #line, "\(c(in: originStringArray))")


func d<T: Numeric>(in anyArray: [T]) -> [Any] {
    var fixedArray: [Any] = []
    
    fixedArray = anyArray.enumerated()
        .filter{ $0.offset % 2 == 0}
        .map{ $0.element }
    
    return fixedArray
}


//MARK: -- 도전 문제

protocol Engine {
    
}

class Car {
    var brand: String
    var model: String
    var since: String
    var engine: Engine
    
    init(brand: String, model: String, since: String, engine: Engine) {
        self.brand = brand
        self.model = model
        self.since = since
        self.engine = engine
    }
    
    func driving() {
        print("차가 움직임")
    }
    
    func stop() {
        print("차가 멈춤")
    }
    
    func charge() {
        print("자동차 충전중")
    }
    
}


class ElectricEngine: Engine {

}

class HyDrogenEngine: Engine {

}

class ElectricCar: Car {
    
    init(brand: String, model: String, since: String, engine: ElectricEngine) {
        super.init(brand: brand, model: model, since: since, engine: engine)
    }
    
    override func charge() {
        print("전기차 충전중")
    }
}

class HybridCar: Car {
    
    init(brand: String, model: String, since: String, engine: HyDrogenEngine) {
        super.init(brand: brand, model: model, since: since, engine: engine)
    }
    
    func switchEngine(to otherEngine: Engine) {
        engine = otherEngine
        print("엔진을 \(engine)로 바꿨습니다.")
    }
}

let initHybridCar = HybridCar(brand: "기아", model: "k9", since: "2024", engine: HyDrogenEngine())


initHybridCar.charge()
initHybridCar.stop()
initHybridCar.driving()


initHybridCar.switchEngine(to: ElectricEngine())
let checkEngine = initHybridCar.engine
print(checkEngine)

//- [ ]  상속을 사용하여 기능을 추가하는 것과, 프로토콜 채택을 통해서 기능을 추가하는 것의 장단점, 차이를 고민하고 주석으로 서술해주세요.
/*
 프로토콜 - 장점: 접근이 쉽다, 단점: 기능 확장이 어렵다
 상속 - 장점: 재사용성이 좋다, 프로토콜 처럼 다중 (상속)채택이 어렵다.
 */

