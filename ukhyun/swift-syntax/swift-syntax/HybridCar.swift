//
//  HybridCar.swift
//  swift-syntax
//
//  Created by GO on 3/19/25.
//

import Foundation

struct HydrogenEngine: Engine {
    func drive() {
        print("Hybrid Car 주행 중 ...")
    }
    
    func stop() {
        print("Hybrid Car 정차")
    }
    
    func accelerate() {
        print("Hybrid Car 가속 중 ...")
    }
    
    
}

class HybridCar: Car {
    
    init(brand: String, model: String, modelYear: String, engine: HydrogenEngine) {
        super.init(brand: brand, model: model, modelYear: modelYear, engine: engine)
    }
    
    func regenerativeBreak() {
        print("회생 제동 중 ...")
    }
    
    // 엔진을 런타임에 바꿀 수 있는 switchEngine(to:)
    func switchEngine(to specificEngine: Engine) {
        self.engine = specificEngine
        print("엔진 교체 완료")
    }
}
