/*
 [Int], (Int) -> String를 파라미터로 받고 [String]을 반환하는 myMap 고차함수 작성
 */
func myMap(_ numbers: [Int], _ closure: (Int) -> String) -> [String] {
    return numbers.map { closure($0) }
}
