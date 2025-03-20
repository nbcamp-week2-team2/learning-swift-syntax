/*
 - 두 개의 Int 값을 파라미터로 받고, 하나의 String 값을 반환하는 클로저 설계
 - 클로저 내부에서는 두 정수를 더한 후, "두 수의 합은 {합계}입니다"라는 문자열 반환
 - 이 클로저를 상수 sum에 저장하고, 정확한 타입 명시
 */
let sum: (Int, Int) -> String = { a, b in
    return "두 수의 합은 \(a + b)입니다"
}

/*
 - 위에서 정의한 sum과 동일한 타입의 클로저를 파라미터로 받고, 반환 값이 없는(void) 함수 calcuate 작성
 - calculate 함수 내에서는 파라미터로 전달받은 클로저를 호출하는 코드 포함
 */
func calculate(_ closure: (Int, Int) -> String, _ a: Int, _ b: Int) {
    print("calculate 호출: \(closure(a, b))")
}
