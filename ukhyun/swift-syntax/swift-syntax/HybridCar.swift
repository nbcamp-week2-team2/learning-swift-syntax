//
//  HybridCar.swift
//  swift-syntax
//
//  Created by GO on 3/19/25.
//

import Foundation

struct HydrogenEngine: Engine {
    func stop() {
        print("Hybrid Car 정차")
    }
}

class HybridCar: Car {
    
    init(brand: String, model: String, modelYear: String, engine: HydrogenEngine) {
        super.init(brand: brand, model: model, modelYear: modelYear, engine: engine)
    }
    
    override func accelerate() {
        print("HybridCar 가속 중 ...")
    }
    
    func regenerativeBreak() {
        print("HybridCar 회생 제동 중 ...")
    }
    
    // 엔진을 런타임에 바꿀 수 있는 switchEngine(to:)
    func switchEngine(to specificEngine: Engine) {
        self.engine = specificEngine
        print("\(type(of: engine))으로 교체")
    }
}
