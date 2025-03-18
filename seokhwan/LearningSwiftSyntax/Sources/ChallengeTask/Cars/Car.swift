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
