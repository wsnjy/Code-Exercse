//: Playground - noun: a place where people can play

import Cocoa
// problem https://www.hackerrank.com/challenges/the-hurdle-race/problem

func hurdleRace(k: Int, height: [Int]) -> Int {
    
    if height.max()! < k {
        return 0
    }
    
    return height.max()! - k
    
}

var array = [1,6,3,5,2]
hurdleRace(k: 4, height:array)
