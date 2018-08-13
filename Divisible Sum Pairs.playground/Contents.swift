//: Playground - noun: a place where people can play

// the problem https://www.hackerrank.com/challenges/divisible-sum-pairs/problem
// Complete the divisibleSumPairs function below.
func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
    
    var matchValue = 0
    
    if n < 2 {
        return 0
    }
    
    if k < 1 {
        return 0
    }
    
    for i in 0..<ar.count {
        
        for j in 0..<ar.count {
            if i < j && ((ar[i] + ar[j]) % k == 0) {
                matchValue += 1
            }
        }
        
    }
    
    return matchValue
}

divisibleSumPairs(n: 6, k: 3, ar: [1, 3, 2, 6, 1, 2])
