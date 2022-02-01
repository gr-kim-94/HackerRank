import Cocoa

func pickingNumbers(a: [Int]) -> Int {
    var maxCount = 0
    let list = a.sorted()
    for i in 0...list.count-1 {
        let leaveList = list[i...list.count-1]
        let filter = leaveList.filter {
            abs(list[i] - $0) <= 1
        }
                
        if maxCount < filter.count {
            maxCount = filter.count
        }
    }
    
    return maxCount
}

pickingNumbers(a: [4, 6, 5, 3, 3, 1])
