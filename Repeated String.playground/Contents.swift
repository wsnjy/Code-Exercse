//: Playground - noun: a place where people can play

// Case https://www.hackerrank.com/challenges/repeated-string/problem

// Complete the repeatedString function below.
func repeatedString(s: String, n: Int) -> Int {
    
    var aCount      = 0
    let divResult   = n/s.count
    let charLeft    = n - (s.count * divResult)
    var countLeft   = 0
    let arrayS      = Array(s)
    let nCharArray  = arrayS[0..<charLeft]
    
    if s == "a" {
        return n
    }
    
    if !Array(s).contains("a") {
        return 0
    }
    
    for letter in arrayS {
        aCount += checkLetter(letter)
    }
    
    for letter in nCharArray {
        countLeft += checkLetter(letter)
    }
    
    return (divResult * aCount) + countLeft
    
}

func checkLetter(_ letter:Character) -> Int {
    var count = 0
    
    if letter == "a" {
        count = 1
    }
    
    return count
}

repeatedString(s: "aba", n: 10)
