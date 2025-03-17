import XCTest
@testable import EssentialTasks

final class EssentialTasksTests: XCTestCase {
    // MARK: - 필수 문제 1에 대한 TC
    func test_sum() throws {
        XCTAssertEqual(sum(3, 5), "두 수의 합은 8입니다")
    }

    func test_calculate() throws {
        let output = interceptedStringFromStdout {
            calculate(sum, 3, 5)
        }
        XCTAssertEqual(output, "두 수의 합은 8입니다")
    }

    // 표준 출력(stdout)을 가로채는 함수
    private func interceptedStringFromStdout(_ closure: () -> Void) -> String? {
        let pipe = Pipe()
        let originalStdout = dup(fileno(stdout))
        dup2(pipe.fileHandleForWriting.fileDescriptor, fileno(stdout))

        closure()

        fflush(stdout)
        try? pipe.fileHandleForWriting.close()
        dup2(originalStdout, fileno(stdout))

        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        let result = String(data: data, encoding: .utf8)?.trimmingCharacters(in: .whitespacesAndNewlines)

        return result
    }

    // MARK: - 필수 문제 2에 대한 TC
    func test_myMap() throws {
        let result1 = myMap([1, 2, 3, 4, 5]) {
            String($0)
        }
        XCTAssertEqual(result1, ["1", "2", "3", "4", "5"])

        let result2 = myMap([3, 6, 9, 12]) {
            String($0 * $0)
        }
        XCTAssertEqual(result2, ["9", "36", "81", "144"])
    }

    // MARK: - 필수 문제 3에 대한 TC
    func test_a() throws {
        let numbers = [13, 2, 1, 57, 302, 15, 23]
        XCTAssertEqual(a(numbers), [13, 1, 302, 23])
    }

    func test_b() throws {
        let words = ["내일", "배움", "캠프", "3주차", "과제"]
        XCTAssertEqual(b(words), ["내일", "캠프", "과제"])
    }

    func test_c() throws {
        let numbers = [13, 2, 1, 57, 302, 15, 23]
        XCTAssertEqual(c(numbers), [13, 1, 302, 23])

        let words = ["내일", "배움", "캠프", "3주차", "과제"]
        XCTAssertEqual(c(words), ["내일", "캠프", "과제"])
    }

    func test_d() throws {
        let integers = [13, 2, 1, 57, 302, 15, 23]
        XCTAssertEqual(d(integers), [13, 1, 302, 23])

        let doubles = [13.3, 2.5, 1.0, 57.1, 302.22, 15.4, 23.2]
        XCTAssertEqual(d(doubles), [13.3, 1.0, 302.22, 23.2])
    }
}
