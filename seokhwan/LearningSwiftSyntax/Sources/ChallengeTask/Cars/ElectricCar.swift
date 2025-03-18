final class ElectricCar: Car {
    init(brand: String, model: String, year: String, engine: ElectricEngine) {
        super.init(brand: brand, model: model, year: year, engine: engine)
    }

    override func drive() {
        print("ElectricCar 주행 중...")
    }

    override func stop() {
        print("ElectricCar 정차")
    }
}
