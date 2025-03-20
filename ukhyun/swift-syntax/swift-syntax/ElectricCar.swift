//
//  ElectricCar.swift
//  swift-syntax
//
//  Created by GO on 3/19/25.
//

import Foundation

struct ElectricEngine: Engine {
    func stop() {
        print("Electric Car 정차")
    }
}

class ElectricCar: Car {
    
    init(brand: String, model: String, modelYear: String) {
        let electricEngine = ElectricEngine()
        super.init(brand: brand, model: model, modelYear: modelYear, engine: electricEngine)
    }
    
    override func accelerate() {
        print("Electric Car 가속 중 ...")
    }
    
    func charge() {
        print("Electric Car 충전 중 ...")
    }
    
}
