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
