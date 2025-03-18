/*
 - Car를 상속한 HybridCar 정의
 - HydrogenEngine 타입의 Engine 사용
 - 런타임에 엔진을 교체할 수 있는 switchEngine(to:) 구현
 */
final class HybridCar: Car {
    init(brand: String, model: String, year: String, engine: HydrogenEngine) {
        super.init(brand: brand, model: model, year: year, engine: engine)
    }

    override func drive() {
        print("HybridCar 주행 중...")
    }

    override func stop() {
        print("HybridCar 정차")
    }

    func switchEngine(to engine: Engine) {
        self.engine = engine
        print("\(type(of: engine))으로 교체")
    }
}
