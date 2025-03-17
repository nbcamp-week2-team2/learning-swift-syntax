/*
 Int 배열의 짝수번째 요소를 제거해서 반환하는 함수 a 작성
 */
func a(_ input: [Int]) -> [Int] {
    let output = input.enumerated()
        .filter { $0.offset % 2 == 0 }
        .map { $0.element }

    return output
}

/*
 String 배열의 짝수번째 요소를 제거해서 반환하는 함수 b 작성
 */
func b(_ input: [String]) -> [String] {
    let output = input.enumerated()
        .filter { $0.offset % 2 == 0 }
        .map { $0.element }

    return output
}

/*
 위 두 함수를 하나의 함수로 대체할 수 있는 함수 c 작성
 */
func c<Element>(_ input: [Element]) -> [Element] {
    let output = input.enumerated()
        .filter { $0.offset % 2 == 0 }
        .map { $0.element }

    return output
}

/*
 함수 c에 Numbers 프로토콜 요소를 가진 배열만 사용할 수 있는 함수 d 작성
 */
func d<Element: Numeric>(_ input: [Element]) -> [Element] {
    let output = input.enumerated()
        .filter { $0.offset % 2 == 0 }
        .map { $0.element }

    return output
}
