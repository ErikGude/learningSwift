//: Playground - noun: a place where people can play

import Foundation

func areaOfCircle(radius:Float) -> Float {
    let pi:Float = 3.14159
    
    return pi * radius * radius
}



func oddNumbers() -> [Float] {
    
    var oddArray = [Float]()
    
    
    for number in 0...500 {
        
        let isOdd = number % 2 == 1
        
        if isOdd {
            oddArray.append(Float(number))
        }
    }
    return oddArray
}

var oddArray = oddNumbers()

func areaOfCircleWithRadii(radii:[Float]) -> Float {
    var sum:Float = 0
    
    for radius in radii {
        sum = sum + areaOfCircle(radius)
    }
    
    return sum
}

let result = areaOfCircleWithRadii( (0..<100).map { Float($0) } )
result

areaOfCircleWithRadii(oddArray)


let areas = oddArray.map { areaOfCircle($0) }



func evenNumbers() -> [Float] {
    
    var evenArray = [Float]()
    
    for number in 0...500 {
        
        let isEven = number % 2 == 0
        
        if isEven {
            
            evenArray.append(Float(number))
        }
    }
    return evenArray
}

evenNumbers()






















