import Foundation

func simpleArraySum(ar: [Int]) -> Int {
    var sum = 0
    for item in ar {
        sum += item
    }
    
    return sum
}

func simpleArraySum2(ar: [Int]) -> Int {
    let sum = ar.reduce(0, {
        $0 + $1
    })
    
    return sum
}

let ar: [Int] = [1,2,3,4,10,11]
let result = simpleArraySum(ar: ar)
let result2 = simpleArraySum2(ar: ar)
print(result)
print(result2)
