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

// index로 찾는지 index의 위치값을 나눈 나머지의 2가 0일때를 찾는지
//func a(in intArray: [Int]) -> [Int]{
//    let fixedIntArray = intArray
//
//}


func b(in StringArray: [String]) -> [String] {
    var fixedStringArray: [String] = []
    
    for (index, char) in StringArray.enumerated() {
        if index % 2 == 0 {
            fixedStringArray.append(char)
        }
    }
    return fixedStringArray
}

let originStringArray: [String] = ["가", "나", "다", "라", "마"]
let answerRemoveStringEnumElement = b(in: originStringArray)
print(#fileID, #function, #line, "\(answerRemoveStringEnumElement)")


func c(in AnyArray: [Any]) -> [Any] {
    var fixedArray: [Any] = []
    
    fixedArray = AnyArray.enumerated()
        .filter{ $0.offset % 2 == 0}
        .map{ $0.element }
    
    return fixedArray
}

print(#fileID, #function, #line, "\(c(in: numbers1))")
print(#fileID, #function, #line, "\(c(in: originStringArray))")


func d<T: Numeric>(in AnyArray: [T]) -> [Any] {
    var fixedArray: [Any] = []
    
    fixedArray = AnyArray.enumerated()
        .filter{ $0.offset % 2 == 0}
        .map{ $0.element }
    
    return fixedArray
}

