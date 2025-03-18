/*
 Engine을 채택한 ElectricEngine 정의
 ElectricEngine은 ElectricCar에서 사용됨
 */
struct ElectricEngine: Engine {
    func supply() {
        print("배터리 충전중...")
    }
}
