//: Playground - noun: a place where people can play

// Problem https://www.hackerrank.com/challenges/migratory-birds/problem

func migratoryBirds(arr: [Int]) -> Int {
    
    var numberAndCount = [Int:Int]()
    var highestKey = 0
    
    for number in arr {
        
        if numberAndCount[number] != nil {
            numberAndCount[number] = numberAndCount[number]! + 1
        }else{
            numberAndCount[number] = 1
        }
        
    }
    
    for number in numberAndCount {
        
        if highestKey == 0 {
            highestKey = number.key
        }
        
        if numberAndCount[highestKey]! < number.value {
            highestKey = number.key
        }
        
        if numberAndCount[highestKey]! ==  number.value {
            if highestKey > number.key {
                highestKey = number.key
            }
        }
        
    }
    
    return highestKey
}

migratoryBirds(arr: [1, 4, 4, 4, 5,5,5, 3])
