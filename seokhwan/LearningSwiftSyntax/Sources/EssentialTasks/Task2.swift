/*
 [Int], (Int) -> String를 파라미터로 받고 [String]을 반환하는 myMap 고차함수 작성
 */
let myMap: ([Int], (Int) -> String) -> [String] = { numbers, closure in
    return numbers.map { closure($0) }
}
