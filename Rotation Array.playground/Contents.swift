import Cocoa


public func solution(_ A : [Int], _ K : Int) -> [Int] {
    
    var A = A
    
    if A.count <= 1 {
        return A
    }
    
    for _ in 1...K {
        A.insert(A.last!, at:0)
        A.removeLast()
    }
    
    return A
    
}

solution([3, 8, 9, 7, 6], 3)
