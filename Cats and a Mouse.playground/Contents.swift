//: Playground - noun: a place where people can play
// Problem https://www.hackerrank.com/challenges/cats-and-a-mouse/problem


import Foundation

func catAndMouse(x: Int, y: Int, z: Int) -> String {
    
    let catA:Int = abs(z-x)
    let catB:Int = abs(z-y)
    
    var result = "Mouse C"
    
    if (catA < catB) {
        result = "Cat A"
    }else if (catA > catB){
        result = "Cat B"
    }
    
    return result
    
}
