//
//  Car.swift
//  swift-syntax
//
//  Created by GO on 3/19/25.
//

import Foundation

// Engine 이라는 커스텀 타입으로 정의
protocol Engine {
    func stop()
}

struct GasolineEngine: Engine {
    
    func stop() {
        print("Gasoline Engine 정지")
    }

}

// Base Class Car 를 설계
class Car {
    
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
    
    func accelerate() {
        print("Gasoline Car 가속 중 ...")
    }
    
    func refuel() {
        print("Gasoline Car 밥 주는 중 ...")
    }
}
