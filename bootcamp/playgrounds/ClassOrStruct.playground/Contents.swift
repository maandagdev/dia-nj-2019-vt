//: Playground - noun: a place where people can play

import UIKit

class CountClass{
    private var counter : Int
    
    init(){
        self.counter = 0;
    }
    
    public func increaseByAMillion(){
        for _ in 1 ... 1000000 {
            self.counter += 1
        }
    }
    
    public func getCounter() -> Int{
        return self.counter
    }
}

struct CountStruct{
    private var counter : Int
    
    init(){
        self.counter = 0;
    }
    public mutating func increaseByAMillion(){
        for _ in 1 ... 1000000 {
            self.counter += 1
        }
    }
    
    public func getCounter() -> Int{
        return self.counter
    }
}

let countWithClass: CountClass = CountClass()
var countWithStruct: CountStruct = CountStruct()

var nieuwClass = countWithClass
var nieuwStruct = countWithStruct

nieuwClass.increaseByAMillion()
nieuwStruct.increaseByAMillion()

//print(countWithClass.getCounter())
//print(countWithStruct.getCounter())


