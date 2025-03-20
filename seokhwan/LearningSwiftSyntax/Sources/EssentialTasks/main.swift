// MARK: - 필수 문제 1
print("=== 필수 문제 1 ===")

// sum 호출
print("sum 호출: \(sum(3, 5))")

// calculate 호출
calculate(3, 5, sum)

// MARK: - 필수 문제 2
print("\n=== 필수 문제 2 ===")

/*
 아래 for-in 구문을 map을 사용하는 코드로 변환

 ```swift
 let numbers = [1, 2, 3, 4, 5]
 var result = [String]()

 for number in numbers {
   result.append(number)
 }
 ```
 */
let numbers = [1, 2, 3, 4, 5]
let result = numbers.map { "\($0)" }
print("map 사용: \(result)")

/*
 주어진 입력값을 고차함수를 체이닝하여 주어진 출력값이 나오도록 구현
 - 입력: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
 - 출력: ["2", "4", "6", "8", "10"]
 */
let input = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let result2 = input
    .filter { $0 % 2 == 0 }
    .map { "\($0)" }
print("고차함수 체이닝: \(result2)")

// myMap 호출
let result3 = myMap([1, 2, 3, 4, 5]) {
    String($0)
}
print("myMap 호출: \(result3)")

// MARK: - 필수 문제 3
print("\n=== 필수 문제 3 ===")

// a 호출
print("a: \(a([1, 2, 3, 4, 5]))")

// b 호출
print("b: \(b(["가", "나", "다", "라", "마"]))")

// c 호출
print("c-1: \(c([1, 2, 3, 4, 5]))")
print("c-2: \(c(["가", "나", "다", "라", "마"]))")

// d 호출
print("d-1: \(d([1, 2, 3, 4, 5]))")
print("d-2: \(d([1.1, 2.2, 3.3, 4.4, 5.5]))")
//print("d: \(d(["가", "나", "다", "라", "마"]))") // error
