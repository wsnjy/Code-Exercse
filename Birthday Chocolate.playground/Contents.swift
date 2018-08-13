//: Playground - noun: a place where people can play

// Case https://www.hackerrank.com/challenges/the-birthday-bar/problem

func birthday(s: [Int], d: Int, m: Int) -> Int {
    
    var count = 0
    var lastIndex = 0
    
    if m > s.count{
        return 0
    }
    
    for lastIndex in 0...s.count-1 {
        if (s.count - lastIndex) >= m {
            if s[lastIndex..<(lastIndex + m)].reduce(0,+) == d {
                count += 1
            }
        }
    }
    
    return count
}


birthday(s: [1,2,1,3,2], d: 3, m: 2)
