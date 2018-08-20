
// Problem https://www.hackerrank.com/challenges/sock-merchant/problem

func sockMerchant(n: Int, ar: [Int]) -> Int {
    var socks = [Int:Int]()
    var socksCount = 0
    
    for number in ar {
        
        if (socks[number] != nil) {
            socks[number] = socks[number]! + 1
        }else{
            socks[number] = 1
        }
    }
    
    for (key,value) in socks {
        if value < 2 {
            socks.removeValue(forKey: key)
        }
    }
    
    for item in socks {
        socksCount += item.value/2
    }
    
    return socksCount
}

sockMerchant(n: 7, ar: [1,2,1,2,1,3,2])
