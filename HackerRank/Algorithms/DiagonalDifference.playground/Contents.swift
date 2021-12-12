import Cocoa

func diagonalDifference(arr: [[Int]]) -> Int {
    var leftToRightSum = 0
    var rightToLeftSum = 0
    for (index, value) in arr.enumerated() {
        for (childIndex, childValue) in value.enumerated() {
            if index == childIndex {
                leftToRightSum += childValue
            }
            
            if (value.count - 1 - index) == childIndex {
                rightToLeftSum += childValue
            }
        }
    }
    
    return abs(leftToRightSum - rightToLeftSum)
}

let arr = [[1,2,3], [4,5,6], [9,8,9]]
diagonalDifference(arr: arr)
