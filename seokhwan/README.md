# 📚 LearningSwiftSyntax

## 👀 Introduce

Closure, Higher-order Function, Generic, OOP에 대한 실습 프로젝트입니다.

## 🔥 Stack

Xcode, Swift, MacOS CLI, SPM Modularization

## 🔦 Directory Structure

```bash
seokhwan
├── README.md
└── LearningSwiftSyntax
    ├── Package.swift
    ├── Sources
    │   ├── EssentialTasks
    │   │   ├── main.swift
    │   │   ├── Task1.swift
    │   │   ├── Task2.swift
    │   │   └── Task3.swift
    │   └── ChallengeTask
    │       ├── main.swift
    │       ├── Cars
    │       │   ├── Car.swift
    │       │   ├── ElectricCar.swift
    │       │   └── HybridCar.swift
    │       └── Engines
    │           ├── Engine.swift
    │           ├── ElectricEngine.swift
    │           └── HydrogenEngine.swift
    └── Tests
        └── EssentialTasksTests
            └── EssentialTasksTests.swift

```

* EssentialTasks: 필수 문제 1, 2, 3
* ChallengeTask: 도전 문제 1

## 🛠️ Usage

```bash
git clone https://github.com/nbcamp-week2-team2/learning-swift-syntax.git
cd learning-swift-syntax/seokhwan/LearningSwiftSyntax
```
* 프로젝트 열기: `open Package.swift`
* `필수 문제` Run: Scheme을 `EssentialTasks`로 설정 후 `⌘ + R`
* `필수 문제` Test: Scheme을 `LearningSwiftSyntax-Package`로 설정 후 `⌘ + U`
* `도전 문제` Run: Scheme을 `ChallengeTask`로 설정 후 `⌘ + R`

## 🚀 Features

- [x] Swift 5.9 버전으로 설정

### 필수 문제 1

- [x] 두 개의 Int 값을 파라미터로 받고, 하나의 String 값을 반환하는 `sum` 클로저 구현
- [x] `sum`과 동일한 타입을 파라미터로 받고, 반환 값이 없는 `calculate` 함수 구현

### 필수 문제 2

- [x] 주어진 for-in 구문을 map 구문으로 변환
- [x] 주어진 입력값을 고차함수 체이닝을 통해 정해진 출력값을 반환하도록 로직 구현
- [x] `myMap` 고차함수 구현

### 필수 문제 3

- [x] [Int]의 짝수번째 요소를 제거해서 반환하는 함수 `a` 구현
- [x] [String]의 짝수번째 요소를 제거해서 반환하는 함수 `b` 구현 
- [x] `a`와 `b`를 하나의 함수로 대체할 수 있는 함수 `c` 구현
- [x] `c`를 기반으로 Numeric 프로토콜을 준수하는 함수 `d` 구현

### 도전 문제 1

- [x] `Car` 클래스 구현
- [x] `Car`를 상속받는 `ElectricCar`, `HybridCar` 구현
- [x] `Engine` 프로토콜 구현
- [x] `Engine`을 채택한 `ElectricEngine`, `HydrogenEngine` 구현
- [x] `HybridCar`에 런타임에 엔진을 교체할 수 있는 `switchEngine(to:)` 구현
- [x] 상속과 프로토콜 방식을 학습하고 주석으로 내용 서술

### 기타사항

- [x] TIL에 트러블 슈팅 과정 기록
- [ ] 코드리뷰 진행
- [x] 디렉터리 및 파일 분리(+모듈화)
- [x] 네이밍 직관적이고 이해하기 쉽게 작성
- [x] 주석 활용해 코드 설명
- [x] Readme.md 작성
- [ ] 2가지 이상의 예외처리 구현
- [x] 컨벤션을 준수한 커밋 10회 이상

## 💡 Trouble Shooting

- [print()도 테스트할 수 있을까?](https://youseokhwan.me/blog/intercept-stdout-string/)
