import Cocoa

func migratoryBirds(arr: [Int]) -> Int {
    var counts: [Int: Int] = [:]
    
    for item in arr {
        counts[item] = (counts[item] ?? 0) + 1
    }
    let max = counts.max {
        if $0.value == $1.value {
            return $0.key > $1.key
        }
        return $0.value < $1.value
    }
    
    return max?.key ?? 0
}

func migratoryBirds2(arr: [Int]) -> Int {
    var counts: [Int: Int] = [:]
    
    arr.forEach {
        counts[$0] = (counts[$0] ?? 0) + 1
    }
    let max = counts.max {
        if $0.value == $1.value {
            return $0.key > $1.key
        }
        return $0.value < $1.value
    }
    return max?.key ?? 0
}

migratoryBirds(arr: [1, 4, 4, 4, 5, 3])
migratoryBirds(arr: [1, 4, 4, 3, 5, 3])
migratoryBirds2(arr: [1, 1, 4, 4, 5, 3])
migratoryBirds2(arr: [1, 2, 3, 4, 5, 4, 3, 2, 1, 3, 4])
