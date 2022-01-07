import Cocoa

func pageCount(n: Int, p: Int) -> Int {
    if p == 1 || p == n {
        // 첫페이지나 마지막페이지일 경우
        return 0
    }
    
    if n%2 == 0 {
        // n = 6 : 1, 2 3, 4 5, 6
        // n = 10 : 1, 2 3, 4 5, 6 7, 8 9, 10
    } else {
        // n = 7 : 1, 2 3, 4 5, 6 7
        // n = 9 : 1, 2 3, 4 5, 6 7, 8 9
    }
    
    return 0
}

pageCount(n: 5, p: 3)
pageCount(n: 11, p: 2)
pageCount(n: 10, p: 2)
pageCount(n: 10, p: 8)
