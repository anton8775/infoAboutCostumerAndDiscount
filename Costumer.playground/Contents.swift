import UIKit

typealias Costumer = (name: String, isPartner: Bool, sum: Int)

var cost = Costumer("John", Bool.random(), Int.random(in: 0...2500))
var discountIfSumMoreThan500AndLessThan1110 = 10
var discountIfSumMoreThan110AndLessThan2000 = 15
var discountIfSumMoreThan2000 = 25

// Info about costumer 
print("The costumer's name is \(cost.name).")
if cost.isPartner == true{
    print("He is a partner.")
} else if cost.isPartner == false{
    print("He isn't a partner.")
}

// Discount
if cost.sum > 0, cost.sum < 501, cost.isPartner == true{
    print("His discount equals to 5 percents.")
} else if cost.sum > 0, cost.sum < 501{
    print("His doesn't have a discount.")
} else if cost.sum > 500, cost.sum < 1111, cost.isPartner == true{
    print("His discount equals to \(discountIfSumMoreThan500AndLessThan1110 * 2) percents.")
} else if cost.sum > 500, cost.sum < 1111{
    print("His discount equals to \(discountIfSumMoreThan500AndLessThan1110) percents.")
} else if cost.sum > 1110, cost.sum < 2001, cost.isPartner == true {
    print("His discount equals to \(discountIfSumMoreThan110AndLessThan2000 * 2) percents.")
} else if cost.sum > 1110, cost.sum < 2001 {
    print("His discount equals to \(discountIfSumMoreThan110AndLessThan2000) percents.")
} else if cost.sum > 2000, cost.isPartner == true {
    print("His discount equals to \(discountIfSumMoreThan2000 * 2) percents.")
} else if cost.sum > 2000 {
    print("His discount equals to \(discountIfSumMoreThan2000) percents.")
}

// Info about initial sum
print("Initial purchase amount is \(cost.sum) hryvnias.")

// Info about sum after discount
if cost.sum > 0, cost.sum < 501, cost.isPartner == true{
    var x1: Double = Double(cost.sum) * 5 / 100
    var x: Double = Double(cost.sum) - x1
    print("The amount payable after the discount is \(x) hryvnias.")
} else if cost.sum > 0, cost.sum < 501{
    print("His doesn't have a discount so the amount payable is equal to \(cost.sum)")
} else if cost.sum > 500, cost.sum < 1111, cost.isPartner == true{
    var y1: Double = Double(cost.sum) * (Double(discountIfSumMoreThan500AndLessThan1110) * 2) / 100
    var y: Double = Double(cost.sum) - y1
    print("The amount payable after the discount is \(y) hryvnias.")
} else if cost.sum > 500, cost.sum < 1111{
    var v1: Double = Double(cost.sum) * Double(discountIfSumMoreThan500AndLessThan1110) / 100
    var v: Double = Double(cost.sum) - v1
    print("The amount payable after the discount is \(v) hryvnias.")
} else if cost.sum > 1110, cost.sum < 2001, cost.isPartner == true {
    var c1: Double = Double(cost.sum) * (Double(discountIfSumMoreThan110AndLessThan2000) * 2) / 100
    var c: Double = Double(cost.sum) - c1
    print("The amount payable after the discount is \(c) hryvnias.")
} else if cost.sum > 1110, cost.sum < 2001 {
    var q1: Double = Double(cost.sum) * Double(discountIfSumMoreThan110AndLessThan2000) / 100
    var q: Double = Double(cost.sum) - q1
    print("The amount payable after the discount is \(q) hryvnias.")
} else if cost.sum > 2000, cost.isPartner == true {
    var p1: Double = Double(cost.sum) * (Double(discountIfSumMoreThan2000) * 2) / 100
    var p: Double = Double(cost.sum) - p1
    print("The amount payable after the discount is \(p) hryvnias.")
} else if cost.sum > 2000 {
    var b1: Double = Double(cost.sum) * Double(discountIfSumMoreThan2000) / 100
    var b: Double = Double(cost.sum) - b1
    print("The amount payable after the discount is \(b) hryvnias.")
}

// Info about gift
if cost.sum == 500{
    print("You are lucky. Your gift is 🥝")
} else if cost.sum == 1000{
    print("You are superman. Your gift is 🍟")
} else if cost.sum == 1111{
    print("You are are banary customer. Your gift is 🍏🍎🍏")
}


