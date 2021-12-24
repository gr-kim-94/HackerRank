import Cocoa

/*
 s
 d : day
 m : month
 
 return Int : s 배열을 m 길이대로 연속으로 잘라 합이 d가 되는 가능 횟수
 */
func birthday(s: [Int], d: Int, m: Int) -> Int {
    var count = 0
    for index in 0...s.count-m {
        let endIndex = s.index(index, offsetBy: m)
        let sList = s[index..<endIndex]
        let sum = sList.reduce(0) { $0 + $1 }
        
        if sum == d {
            count += 1
        }
    }
    return count
}

birthday(s: [1,2,1,3,2], d: 3, m: 2)
birthday(s: [1,1,1,1,1,1], d: 3, m: 2)
