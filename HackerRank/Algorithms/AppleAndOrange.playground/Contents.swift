import Cocoa

/*
 s - t : home
 a : apple tree
 b : orange tree
 */
func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
    let newApples = apples.map { a + $0 }.filter {
        return $0 >= s && $0 <= t
    }
    let newOranges = oranges.map { b + $0 }.filter {
        return $0 >= s && $0 <= t
    }
    
    print(newApples.count)
    print(newOranges.count)
}

countApplesAndOranges(s: 7, t: 10, a: 4, b: 12, apples: [2, 3, -4], oranges: [3, -2, -4])
countApplesAndOranges(s: 7, t: 11, a: 5, b: 15, apples: [-2, 2, 1], oranges: [5, -6])

