//: Playground - noun: a place where people can play

// Complete the pickingNumbers function below.
// problem https://www.hackerrank.com/challenges/picking-numbers/problem

func pickingNumbers(a: [Int]) -> Int {
    
    var countArrayNumber = [Int]()
    var lastNumber = 0
    var count = 0
    
    for number in a.sorted() {
        
        if lastNumber == 0 {
            lastNumber = number
        }
        
        if (number - lastNumber) == 0 || (number - lastNumber) == 1 {
            count += 1
        }else{
            lastNumber = number
            countArrayNumber.append(count)
            count = 1
        }
        
    }
    
    if count != 0 {
        countArrayNumber.append(count)
    }
    
    return countArrayNumber.max()!
    
}

pickingNumbers(a: [1,2,2,3,1,2])
pickingNumbers(a: [1,1,2,2,4,4,5,5,5])
pickingNumbers(a: [4,6,5,3,3,1])
