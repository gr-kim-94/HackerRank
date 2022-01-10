import Cocoa

func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
    var max = -1
    keyboards.forEach { keyboard in
        drives.forEach { drive in
            let sum = keyboard + drive
            if sum > max && sum <= b {
                max = sum
            }
        }
    }
    
    return max
}

getMoneySpent(keyboards: [3,1], drives: [5,2,8], b: 10)
getMoneySpent(keyboards: [4], drives: [5], b: 5)

