/*
 Engine을 채택한 HydrogenEngine 정의
 HydrogenEngine은 HybridCar에서 사용됨
 */
struct HydrogenEngine: Engine {
    func supply() {
        print("휘발유 주유 및 배터리 충전중...")
    }
}
