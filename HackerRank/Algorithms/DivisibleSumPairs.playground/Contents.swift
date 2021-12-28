import Cocoa

func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
    var count = 0
    for (index, first) in ar.enumerated() {
        let nextIndex = index + 1
        if nextIndex == n {
            break
        }
        
        let arr = ar[nextIndex...n-1].map {
            $0 + first
        }.filter {
            return $0 % k == 0
        }
        
        count += arr.count
    }
    
    return count
}

divisibleSumPairs(n: 6, k: 3, ar: [1, 3, 2, 6, 1, 2])
