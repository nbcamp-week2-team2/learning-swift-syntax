protocol EngineProtocol {
    var type: String { get }
}

struct Engine : EngineProtocol {
    let type: String
    init(type: String) { self.type = type }
}

struct ElectricEngine : EngineProtocol {
    let type: String
    init(type: String) { self.type = type }
}

struct HydrogenEngine: EngineProtocol {
    let type: String
    init(type: String) { self.type = type }
}

class Car {
    let brand: String
    let model: String
    let yearMade: String
    var engine: EngineProtocol
    
    init(brand: String, model: String, yearMade: String, engine: EngineProtocol) {
        self.brand = brand
        self.model = model
        self.yearMade = yearMade
        self.engine = engine
    }
    
    // Drive is too general
    func accelerate () {
        print("Car Accerlerating...")
    }
    
    func stop() {
        print("Stopping...")
    }
}

class ElectricCar : Car {
    init(brand: String, model: String, yearMade: String) {
        let electricEngine = ElectricEngine(type: "Electric")
        super.init(brand: brand, model: model, yearMade: yearMade, engine: electricEngine)
    }
}

class HybridCar : Car {
    init(brand: String, model: String, yearMade: String) {
        let hydrogenEngine = HydrogenEngine(type: "Hybrid")
        super.init(brand: brand, model: model, yearMade: yearMade, engine: hydrogenEngine)
    }
    
    func switchEngine(to newEngine: EngineProtocol) {
        self.engine = newEngine
        print("Exchange engine to new one... \(newEngine.type)")
    }
}
