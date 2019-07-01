//: Playground - noun: a place where people can play

// problem: https://www.hackerrank.com/challenges/designer-pdf-viewer/problem

import Cocoa

/* solution 1 */
func designerPdfViewer(h: [Int], word: String) -> Int {
    
    let alphabet:[Character] = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    
    var alphaValue = [Character:Int]()
    var highestValue = 0
    
    for i in 0..<alphabet.count {
        alphaValue[alphabet[i]] = h[i]
    }
    
    for value in word {
        if  highestValue < alphaValue[value]!{
            highestValue = alphaValue[value]!
        }
    }
    
    return word.count * highestValue
}

// Solution 2
func designerPdfViewer2(h: [Int], word: String) -> Int {
    
    let alphabet:[Character:Int] = ["a":0,"b":1,"c":2,"d":3,"e":4,"f":5,"g":6,"h":7,"i":8,"j":9,"k":10,"l":12,"m":12,"n":13,"o":14,"p":15,"q":16,"r":17,"s":18,"t":19,"u":20,"v":21,"w":22,"x":23,"y":24,"z":25]
    
    var highestValue = 0
    
    for value in word {
        
        let index = alphabet[value]!
        
        if  highestValue < h[index]{
            highestValue = h[index]
        }
    }
    
    return word.count * highestValue
}


let arr = [1,3,1,3,1,4,1,3,2,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5]

designerPdfViewer2(h: arr, word: "aba")
