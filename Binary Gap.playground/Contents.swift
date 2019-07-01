import Cocoa

public func solution(_ N : Int) -> Int {
    
    let binary = String(N, radix:2)
    let arrayBinary = Array(binary)
    var longestGap = 0
    var gap = 0
    
    if !checkIfBinaryGap(arrayBinary) {
        return 0
    }
    
    for item in arrayBinary {
        print(item)
        if item == "0" {
            gap += 1
        }else{
            if longestGap < gap {
                longestGap = gap
            }
            gap = 0
        }
    }
    return longestGap
}

func checkIfBinaryGap(_ arrayBinary:[Character]) -> Bool{
    var oneCount = 0;
    if arrayBinary.contains("1") && arrayBinary.contains("0") {
        for item in arrayBinary {
            if item == "1" {
                oneCount += 1
            }
        }
        
        if oneCount > 1 {
            return true
        }else{
            return false
        }
    
    }
    
    return false
}

solution(32)
