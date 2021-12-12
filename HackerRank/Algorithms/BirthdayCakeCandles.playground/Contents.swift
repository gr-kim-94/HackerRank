import Cocoa

func birthdayCakeCandles(candles: [Int]) -> Int {
    var max = 1
    
    for item in candles {
        if item > max {
            max = item
        }
    }
    
    let filter = candles.filter {
        return $0 == max
    }
    
    return filter.count
}

let candles = [3,2,1,3]
birthdayCakeCandles(candles: candles)
