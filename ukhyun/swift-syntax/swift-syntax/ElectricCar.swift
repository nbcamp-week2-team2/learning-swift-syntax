//
//  ElectricCar.swift
//  swift-syntax
//
//  Created by GO on 3/19/25.
//

import Foundation

struct ElectricEngine: Engine {
    func drive() {
        print("Electric Car 주행 중 ...")
    }
    
    func stop() {
        print("Electric Car 정차")
    }
    
    func accelerate() {
        print("Electric Car 가속 중 ...")
    }
    
    
}

class ElectricCar: Car {
    
    init(brand: String, model: String, modelYear: String, engine: ElectricEngine) {
        super.init(brand: brand, model: model, modelYear: modelYear, engine: engine)
    }
    
    func charge() {
        print("Electric Car 충전 중 ...")
    }
    
}
