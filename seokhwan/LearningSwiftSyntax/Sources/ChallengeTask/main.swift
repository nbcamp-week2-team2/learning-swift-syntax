// MARK: - ElectricCar
print("=== ElectricCar ===")
let tesla = ElectricCar(brand: "Tesla", model: "Model S", year: "2025")
tesla.drive()
tesla.stop()
tesla.supply()

// MARK: - HybridCar
print("\n=== HybridCar ===")
let toyota = HybridCar(brand: "Toyota", model: "Prius", year: "2025")
toyota.drive()
toyota.stop()
toyota.supply()
toyota.switchEngine(to: ElectricEngine())
toyota.supply()

// MARK: - Inheritance와 Protocol 비교
/*
 ## Inheritance
 ### 장점
 - 부모 클래스와 중복되는 프로퍼티와 메서드는 그대로 사용할 수 있기때문에, 코드를 재사용할 수 있음
 - 계층 구조를 명확히 할 수 있음
 - 오버라이딩하여 기능을 확장할 수 있음
 ### 단점
 - 자식 클래스는 부모 클래스에게 강하게 결합되어있어 유연성이 떨어질 수 있음
 - 다중 상속 불가능

 ## Protocol
 ### 장점
 - 강한 결합이 아니기때문에, 프로토콜을 채택하여 다양한 방식으로 구현할 수 있음
 - 여러 프로토콜을 채택할 수 있음
 - 프로토콜에 정의된 메서드는 반드시 구현해야 하므로, 구현을 강제할 수 있음
 ### 단점
 - 클래스나 구조체 내부에 직접 구현해야되기 때문에 코드가 길어짐
 - 기본 구현을 제공하지 않음

 ## 결론
 객체 간의 계층적 관계가 명확하거나, 시스템 내에서 공통된 '속성'과 '기능'을 공유할 때는 상속 방식이 적합하고,
 여러 클래스나 구조체가 공통된 '동작'을 다양하게 구현해야할 때는 프로토콜 방식을 사용하는 것이 적합하다.
 */
