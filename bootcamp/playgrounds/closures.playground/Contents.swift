
import UIKit


func addNumbers(first number1: Int, second number2: Int) -> Int{
    return number1 + number2
}

func multiplyNumbers(first number1: Int, second number2: Int) -> Int{
    return number1 * number2
}

//function that takes two parameters and a closure
func performOperationOnTwoInts(first number1: Int, second number2: Int, function: (Int, Int) -> Int ) -> Int {
    return function(number1, number2)
}

//using an exisiting function as a closure
performOperationOnTwoInts(first: 5, second: 5, function: addNumbers)
performOperationOnTwoInts(first: 5, second: 5, function: multiplyNumbers)

//using an inline closure
performOperationOnTwoInts(first: 3, second: 3, function: {(base: Int, exponent: Int) -> Int in
    var remainder = base
    for i in 1..<exponent {
        remainder *= base
    }
    return remainder
})

//shorthand version
let short = performOperationOnTwoInts(first: 12, second: 4, function:{return $0-$1})
let answer = short

//return is optional!
let shorter = performOperationOnTwoInts(first: 12, second: 7, function:{$0-$1})
let answer2 = shorter

//shorter still (only allowed when last parameter is the closure)
let shortest = performOperationOnTwoInts(first: 12, second: 2) {$0-$1}
let answer3 = shortest

//Use of closure with map function
let intArray = [3,5,3,6,4,3,2,3,4,5,6]
var newIntArray = intArray.map({(number: Int) -> Int in number+5})
newIntArray

//Shorthand version
newIntArray = intArray.map({$0+12})
newIntArray

