/*
 - Base Class Car 정의
 - 브랜드, 모델, 연식, 엔진 4가지 상태 정의
 - 주행, 정차, 공급 3가지 동작 정의
 */
class Car {
    let brand: String
    let model: String
    let year: String
    var engine: Engine

    init(brand: String, model: String, year: String, engine: Engine) {
        self.brand = brand
        self.model = model
        self.year = year
        self.engine = engine
    }

    func drive() {
        print("Car 주행 중...")
    }

    func stop() {
        print("Car 정차")
    }

    func supply() {
        engine.supply()
    }
}
