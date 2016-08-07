import XCTest
@testable import MatchaDBKit

class MatchaDBKitTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPour() {
        var cup = Cup()
        cup.amount = 100.0
        
        let resultCup = Cup.pour(from: cup, amount: 3.0)
        XCTAssertEqual(resultCup.amount, 97.0, "Cup amount should reduce to 97.0")
    }
    
    func testBrewPerformance() {
        measureBlock {
            for _ in 0...10000 {
                var cup = Cup()
                cup.brew()
            }
        }
    }
    
}
