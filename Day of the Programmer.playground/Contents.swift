import Foundation

// Complete the solve function below.
func solve(year: Int) -> String {
    
    let programmerDayInYear = 256
    let JanuariToSeptemberWithoutFebruari = 215
    var Feb = 28
    
    if year == 1918 {
        Feb = 15
    }
    
    if leapYear(year) {
        Feb = 29
    }
    
    let theDay = programmerDayInYear - (JanuariToSeptemberWithoutFebruari + Feb)
    
    return "\(theDay).09.\(year)"
    
}

func leapYear(_ year:Int) -> Bool {
    
    if year < 1918 {
        if year%4 == 0 {
            return true
        }else{
            return false
        }
    }else{
        if (year%400 == 0) {
            return true
        }else if (year%4 == 0){
            if year%100 == 0{
                return false
            }else{
                return true
            }
        }
    }
    
    return false
    
}

solve(year: 2000)
