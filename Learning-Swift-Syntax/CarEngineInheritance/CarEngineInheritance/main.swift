//
//  main.swift
//  CarEngineInheritance
//
//  Created by 윤주형 on 3/18/25.
//

import Foundation

protocol Engine {
    
}

class Car {
    var brand: String
    var model: String
    var since: String
    var engine: Engine
    
    init(brand: String, model: String, since: String, engine: Engine) {
        self.brand = brand
        self.model = model
        self.since = since
        self.engine = engine
    }
    
    func driving() {
        print("차가 움직임")
    }
    
    func stop() {
        print("차가 멈춤")
    }
    
    func charge() {
        print("자동차 충전중")
    }
    
}


class ElectricEngine: Engine {

}

class HyDrogenEngine: Engine {

}

class ElectricCar: Car {
    
    init(brand: String, model: String, since: String, engine: ElectricEngine) {
        super.init(brand: brand, model: model, since: since, engine: engine)
    }
    
    override func charge() {
        print("전기차 충전중")
    }
}

class HybridCar: Car {
    
    init(brand: String, model: String, since: String, engine: HyDrogenEngine) {
        super.init(brand: brand, model: model, since: since, engine: engine)
    }
    
    func switchEngine(to otherEngine: Engine) {
        engine = otherEngine
        print("엔진을 \(engine)로 바꿨습니다.")
    }
}

let initHybridCar = HybridCar(brand: "기아", model: "k9", since: "2024", engine: HyDrogenEngine())


initHybridCar.charge()
initHybridCar.stop()
initHybridCar.driving()


initHybridCar.switchEngine(to: ElectricEngine())
let checkEngine = initHybridCar.engine
print(checkEngine)

//- [ ]  상속을 사용하여 기능을 추가하는 것과, 프로토콜 채택을 통해서 기능을 추가하는 것의 장단점, 차이를 고민하고 주석으로 서술해주세요.
/*
 프로토콜 - 장점: 접근이 쉽다, 단점: 기능 확장이 어렵다
 상속 - 장점: 재사용성이 좋다, 프로토콜 처럼 다중 (상속)채택이 어렵다.
 */


