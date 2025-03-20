# 프로젝트 정보
이 프로젝트는 Swift의 클로저, 고차함수, 제네릭 등에 대한 CLI 프로젝트입니다.

## 디렉토리 구조
ukhyun
├── README.md
└── LearningSwiftSyntax
    └── Car.swift
    └── ElectricCar.swift
    └── HybridCar.swift
    └── main.swift

## 기능
### 필수 문제
- **필수 문제 1**: 두 개의 Int 값을 파라미터로 받고, 하나의 String 값을 반환하는 `sum` 클로저 구현
- **필수 문제 2**: 주어진 입력값을 고차함수를 체이닝하여 주어진 출력값이 나오도록 구현
  - 고차함수 `map`을 커스텀한 `myMap` 고차함수 구현 및 적용
- **필수 문제 3**: `filter`, `map`을 적용
  - Int 배열의 짝수번째 요소를 제거해서 반환하는 함수 `a` 작성
  - String 배열의 짝수번째 요소를 제거해서 반환하는 함수 `b` 작성
  - 함수 `a`, 함수 `b`를 하나의 함수로 대체할 수 있는 방법을 고민해보고, 함수 `c` 작성
  - 함수 `c`를 기반으로 수정하여 함수 `d` 작성
    - 파라미터의 타입을 'Numeric 프로토콜'을 준수하는 타입의 요소를 가진 배열로 변경

### 도전 문제
- '자동차'라는 개념을 가지고 객체 지향 설계
  - 4가지의 상태를 정의
    - 브랜드, 모델, 연식 -> String
    - 엔진 -> Custom Type
  - `Car`를 상속한 `ElectricCar` 설계
    - `ElectricEngine` 타입의 Engine을 사용
  - `Car`를 상속한 `HybridCar` 설계
    - 새로운 엔진 타입 `HydrogenEngine`을 정의
    - 엔진을 런타임에 바꿀 수 있는 `switchEngine(to:)` 구현

