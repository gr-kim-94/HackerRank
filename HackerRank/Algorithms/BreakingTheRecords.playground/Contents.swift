import Cocoa

func breakingRecords(scores: [Int]) -> [Int] {
    var minCount = 0
    var maxCount = 0
    
    guard var min = scores.first, var max = scores.first else {
        return [minCount, maxCount]
    }

    for score in scores {
        if score < min {
            min = score
            minCount += 1
        }
        
        if score > max {
            max = score
            maxCount += 1
        }
    }
    
    return [maxCount, minCount]
}

breakingRecords(scores: [12, 24, 10, 24])
breakingRecords(scores: [10, 5, 20, 20, 4, 5, 2, 25, 1])
breakingRecords(scores: [3, 4, 21, 36, 10, 28, 35, 5, 24, 42])
