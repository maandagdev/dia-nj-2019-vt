//: Playground - noun: a place where people can play

import UIKit

var number: Double = 12.3
var numberRoundedUp: Int {
    get{
        return Int(number.rounded(.up))
    }set{
        number = Double(newValue)
    }
}
numberRoundedUp
numberRoundedUp = 4
number
