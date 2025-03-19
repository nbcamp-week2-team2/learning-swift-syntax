//
//  Car.swift
//  swift-syntax
//
//  Created by GO on 3/19/25.
//

import Foundation

// Engine 이라는 커스텀 타입으로 정의
protocol Engine {
    func drive()
    func stop()
    func accelerate()
}

// Base Class Car 를 설계
class Car: Engine {
    
    let brand: String
    let model: String
    let modelYear: String
    var engine: Engine
    
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
    
    func refuel() {
        print("Car 밥 주는 중 ...")
    }
}
