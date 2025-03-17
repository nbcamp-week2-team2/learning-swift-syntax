// MARK: - 필수 문제 1

// sum 호출
print(sum(3, 5))

// calculate 호출
calculate(sum, 3, 5)

// MARK: - 필수 문제 2

/*
 아래 for-in문을 map을 사용하는 코드로 변환

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
print(result)

/*
 주어진 입력값을 고차함수를 체이닝하여 주어진 출력값이 나오도록 구현
 - 입력: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
 - 출력: ["2", "4", "6", "8", "10"]
 */
let input = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let result2 = input
    .filter { $0 % 2 == 0 }
    .map { "\($0)" }
print(result2)

// myMap 호출
let result3 = myMap([1, 2, 3, 4, 5]) {
    String($0)
}
print(result3)

// MARK: - 필수 문제 3
