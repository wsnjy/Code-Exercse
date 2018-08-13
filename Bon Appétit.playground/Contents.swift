//: Playground - noun: a place where people can play

// problem: https://www.hackerrank.com/challenges/bon-appetit/problem

func bonAppetit(bill: [Int], k: Int, b: Int) -> Void {
    
    let annaCharge = (bill.reduce(0, +) -  bill[k])/2
    
    if b == annaCharge {
        print("Bon Appetit")
    }else{
        print(b-annaCharge)
    }
    
    
}

bonAppetit(bill: [3,10,2,9], k: 1, b: 12)
