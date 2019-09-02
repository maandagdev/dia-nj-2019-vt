import UIKit

//Als er een kans bestaat dat een waarde een (nullpointer) exception zou kunnen veroorzaken, gebruik je in Swift een optional.
var welkTypeIsHet = Double("2.5")

func printIfSet(_ input: Double?) {
    if let output = input {
        print(output)
    }
}

var doubleOptional : Double? = nil
printIfSet( doubleOptional) // doet niets

doubleOptional = 4.3
printIfSet( doubleOptional) // 4.3

// double in een double optional parameter stoppen werkt.
let myDouble: Double = 7.4
printIfSet(myDouble) // double (niet optional er in)
printIfSet( 4) //integer er in

//nil coalescing (default values)
var madGrade: Double? = Double("two")
var grade : Double = madGrade ?? 10.0
printIfSet(grade) //prints 10

//implicidly unwrapped optionals
//sometimes convenient, but not quite as readable
var minor: String!
//var minorKeuzeVanHarry: String = minor // crashes at runtime

//dictionaries return optionals
var stringsAsInts: [String:Double] = [
    "zero" : 0,
    "one" : 1,
    "two" : 2,
    "three" : 3,
    "four" : 4,
    "five" : 5,
    "six" : 6,
    "seven" : 7,
    "eight" : 8,
    "nine" : 9
]

stringsAsInts["zero"] // Optional(0)
stringsAsInts["three"] // Optional(3)
stringsAsInts["ten"] // nil

// Unwraping the optional using optional binding
if let twoAsInt = stringsAsInts["two"] {
    print(twoAsInt) // 2
}

// Unwrapping the optional using the forced value operator (!)
print(stringsAsInts["seven"]!)// 1