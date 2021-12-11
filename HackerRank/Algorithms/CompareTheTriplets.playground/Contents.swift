import Cocoa

// 다시 풀기
func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var aPoint = 0
    var bPoint = 0
    
    for i in 0...(a.count-1) {
        if a[i] > b[i] {
            aPoint += 1
        } else if a[i] < b[i] {
            bPoint += 1
        }
    }
    
    return [aPoint, bPoint]
}

let ar: [Int] = [17, 28, 30]
let br: [Int] = [99, 16, 8]

let result:[Int] = compareTriplets(a: ar, b: br)
print(result)
