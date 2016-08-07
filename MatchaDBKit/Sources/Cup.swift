import Foundation

public struct Cup {
  
  public var price = 0.0
  public var weight = 0.0
  public var amount = 0.0
  
  public init() {}
  
  public mutating func brew() {
    amount -= 5
    weight -= 5
    price += 25
  }
  
}

public extension Cup {
  
  var pricePerUnitWeight: Double {
    return price / weight
  }
  
  static func pour(from cup: Cup, amount: Double) -> Cup {
    var resultCup = cup
    resultCup.amount -= amount
    return resultCup
  }
  
}