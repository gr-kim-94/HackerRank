import Cocoa

func pageCount(n: Int, p: Int) -> Int {
    if p == 1 || p == n {
        // 첫페이지나 마지막페이지일 경우
        return 0
    }
    let page = p/2
    return min(n/2 - page, page)
}

// pageCount RuntimeError -> pageCount2 Success
func pageCount2(n: Int, p: Int) -> Int {
    if p == 1 || p == n {
        return 0
    }
    let lastPage = n/2 - p/2
    if lastPage < p/2 {
        return lastPage
    }
    
    return p/2
}

pageCount(n: 5, p: 3)
pageCount(n: 5, p: 2)
pageCount(n: 5, p: 1)
pageCount(n: 6, p: 5)
pageCount(n: 6, p: 4)
pageCount(n: 6, p: 3)
pageCount(n: 6, p: 2)
