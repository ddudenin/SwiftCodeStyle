import XCTest
@testable import CodingStyleSPM

final class CodingStyleSPMTests: XCTestCase {
    
    func testCamelCase() throws {
        @CodingStyle(style: .camelCase) var camelCaseText: String = ""
        
        camelCaseText = "Tim Cook"
        XCTAssertEqual(camelCaseText, "TimCook")
        
        camelCaseText = "_Tim-Cook "
        XCTAssertEqual(camelCaseText, "TimCook")
        
        camelCaseText = "__Tim  COOK "
        XCTAssertEqual(camelCaseText, "TimCook")
    }
    
    func testSnakeCase() throws {
        @CodingStyle(style: .snakeCase) var snakeCaseText: String = ""
        
        snakeCaseText = "Tim Cook"
        XCTAssertEqual(snakeCaseText, "tim_cook")
        
        snakeCaseText = "_Tim-Cook "
        XCTAssertEqual(snakeCaseText, "tim_cook")
        
        snakeCaseText = "__Tim  COOK "
        XCTAssertEqual(snakeCaseText, "tim_cook")
    }
    
    func testKebabCase() throws {
        @CodingStyle(style: .kebabCase) var kebabCaseText: String = ""
        
        kebabCaseText = "Tim_COOK"
        XCTAssertEqual(kebabCaseText, "tim-cook")
        
        kebabCaseText = "Tim Cook Apple"
        XCTAssertEqual(kebabCaseText, "tim-cook-apple")
    }
}
