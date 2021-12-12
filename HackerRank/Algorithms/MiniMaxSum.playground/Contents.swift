import Cocoa

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

var arr = [1,2,3,4,5]
miniMaxSum(arr: arr)

arr = [1,3,3,4,5]
miniMaxSum(arr: arr)

arr = [7,69,2,221,8974]
miniMaxSum(arr: arr)

arr = [1,3,3,4,4]
miniMaxSum(arr: arr)
