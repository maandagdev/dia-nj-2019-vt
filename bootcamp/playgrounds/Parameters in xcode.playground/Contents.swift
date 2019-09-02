//: Playground - noun: a place where people can play

import UIKit


/*
 functie met twee parameters met externe naam
 */

//             ext   int     type   ext  int   type      returnType
func drawALine(from startX: Double, to  endX: Double) -> Double {
    
    let myVar = startX // goed, gebruikt interne naam
    //myVar = from // fout, gebruikt externe naam (werkt ook niet)
    
    return myVar * endX
}

drawALine(from: 3.4, to: 5.4)




/*
 functie met een parameter zonder externe naam
 */

func squareRoot(_ input: Double) -> Double{
    return sqrt(input)
}


