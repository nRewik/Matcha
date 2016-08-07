import UIKit
import MatchaDBKit
import MatchaWireKit

class ViewController: UIViewController {
  
  let wire = MatchaWire()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupCup()
    setupWire()
  }
  
  func setupCup() {
    var cup = Cup()
    cup.price = 100.0
    cup.amount = 50.0
    
    let newCup = Cup.pour(from: cup, amount: 3.0)
    
    print("\(newCup.amount)")
  }
  
  func setupWire() {
    print("Connect = \(wire.connect())")
  }
  
}

