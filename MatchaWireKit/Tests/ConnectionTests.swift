import XCTest
@testable import MatchaWireKit

class MatchaWireKitTests: XCTestCase {
  
    func testConnect() {
      let wire = MatchaWire()
      XCTAssertTrue(wire.connect(), "It should connect.")
    }
    
}
