//
//  Car.swift
//  swift-syntax
//
//  Created by GO on 3/19/25.
//

import Foundation


protocol Engine {
    func drive()
    func stop()
    func accelerate()
}

final class Car: Engine {
    
    let brand: String
    let model: String
    let modelYear: String
    let engine: Engine
    
    init(brand: String, model: String, modelYear: String, engine: Engine) {
        self.brand = brand
        self.model = model
        self.modelYear = modelYear
        self.engine = engine
    }
    
    func drive() {
        print("Car 주행 중 ...")
    }
    
    func stop() {
        print("Car 정차")
    }
    
    func accelerate() {
        print("Car 가속 중 ...")
    }
    
    func charge() {
        print("Car 밥 주는 중 ...")
    }
}
