import Cocoa

// 양수 갯수 / 전체 갯수
// 음수 갯수 / 전체 갯수
// 0 갯수 / 전체 갯수
func plusMinus(arr: [Int]) -> Void {
    let den = Double(arr.count)
    var plusCount = 0.0
    var minusCount = 0.0
    var zeroCount = 0.0
    
    for item in arr {
        if item > 0 {
            plusCount += 1
        } else if item == 0 {
            zeroCount += 1
        } else {
            minusCount += 1
        }
    }
    
    print(plusCount/den)
    print(minusCount/den)
    print(zeroCount/den)
}

var arr = [1, 1, 0, -1, -1]
plusMinus(arr: arr)

arr = [-4, 3, -9, 0, 4, 1]
plusMinus(arr: arr)
