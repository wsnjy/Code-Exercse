import Cocoa

import Foundation

// Complete the countingValleys function below.
func countingValleys(n: Int, s: String) -> Int {
    
    if n < 2 {
        return 0
    }
    
    let arrayS = Array(s)
    var s = 0
    var valley = 0
    
    for item in arrayS {
        
        if item == "D" {
            s -= 1
        } else {
            s += 1
            
            if s == 0 {
                valley += 1
            }
            
        }
        
    }
    
    return valley
    
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

guard let s = readLine() else { fatalError("Bad input") }

let result = countingValleys(n: n, s: s)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
