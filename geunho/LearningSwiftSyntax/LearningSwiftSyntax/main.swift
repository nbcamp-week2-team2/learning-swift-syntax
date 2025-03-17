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

let sum: (Int, Int) -> String = {
    return "두 수의 합은 \($0 + $1)입니다."
}

print(sum(5, 8))


func calculate(_ sum: (Int, Int) -> String) {
    print(sum(1, 2))
}

calculate(sum)


// MARK: - 필수문제 2
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
    for elem in arr {
        mapped.append(closure(elem))
    }
    return mapped
}

let myMapResult = myMap([1, 2, 3, 4, 5]) {
    String($0)
}

print("myMap: \(result)") // ["1", "2", "3", "4", "5"]



// MARK: - 필수문제 3
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

//- [ ]  함수 `c` 에  Numbers 프로토콜 요소를 가진 배열만 사용할 수 있는 함수 `d` 를 작성해주세요.
protocol Numbers {
    var firstElement: Int { get set }
}

func d<T: Numbers> (_ arr: [T]) -> [T] {
    var array = [T]()
    for i in arr.indices {
        if (i+1) % 2 == 0 { continue }
        array.append(arr[i])
    }
    return array
}

struct D: Numbers {
    var firstElement: Int
}

var d1 = D(firstElement: 1)
var d2 = D(firstElement: 2)
var d3 = D(firstElement: 3)
var d4 = D(firstElement: 4)
var d5 = D(firstElement: 5)

var arrD = [d1, d2, d3, d4, d5]
print(d(arrD))

