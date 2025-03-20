/*
 - Car를 상속한 ElectricCar 정의
 - ElectricEngine 타입의 Engine 사용
 */
final class ElectricCar: Car {
    init(brand: String, model: String, year: String) {
        let engine = ElectricEngine()
        super.init(brand: brand, model: model, year: year, engine: engine)
    }

    override func drive() {
        print("ElectricCar 주행 중...")
    }

    override func stop() {
        print("ElectricCar 정차")
    }
}
