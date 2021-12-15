import Cocoa

// 배열 전체 합에서 최대값 뺀 값, 배열 전체 합에서 최소값 뺀 값.
// 1 <= arr[i] <= 10^9
func miniMaxSum(arr: [Int]) -> Void {
    var sum = 0
    var min = 1000000000
    var max = 1
    for item in arr {
        sum += item
        
        if item < min {
            min = item
        }
        
        if item > max {
            max = item
        }
    }
    
    print((sum - max),(sum - min))
}

func miniMaxSum2(arr: [Int]) -> Void {
    let sum = arr.reduce(0) { $0 + $1 }
    let min = arr.min() ?? 0
    let max = arr.max() ?? 0
    
    print((sum - max),(sum - min))
}

var arr = [1,2,3,4,5]
miniMaxSum(arr: arr) == miniMaxSum2(arr: arr)

arr = [1,3,3,4,5]
miniMaxSum(arr: arr) == miniMaxSum2(arr: arr)

arr = [7,69,2,221,8974]
miniMaxSum(arr: arr) == miniMaxSum2(arr: arr)

arr = [1,3,3,4,4]
miniMaxSum(arr: arr) == miniMaxSum2(arr: arr)
