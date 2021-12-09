import Cocoa

func aVeryBigSum(ar: [Int]) -> Int {
    let sum = ar.reduce(0, {
        $0 + $1
    })
    
    return sum
}

let ar: [Int] = [1000000001,1000000002,1000000003,1000000004,1000000005]
let result = aVeryBigSum(ar: ar)
