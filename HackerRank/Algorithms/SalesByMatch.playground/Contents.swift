import Cocoa

func sockMerchant(n: Int, ar: [Int]) -> Int {
    var arCount:[Int:Int] = [:]
    
    ar.forEach {
        let sum = arCount[$0] ?? 0
        arCount[$0] = sum + 1
    }
    
    let pairCount = arCount.values.map {
        $0 / 2
    }.reduce(0) { $0 + $1 }
    
    return pairCount
}

// sockMerchant Time Out -> sockMerchant2 Success
func sockMerchant2(n: Int, ar: [Int]) -> Int {
    var pairCount = 0
    
    let setAr:Set = Set(ar)
    
    setAr.map { setItem in
        ar.filter { arItem in
            setItem == arItem
        }
    }.forEach {
        pairCount += $0.count / 2
    }
    
    return pairCount
}


sockMerchant(n: 9, ar: [10, 20, 20, 10, 10, 30, 50, 10, 20])
sockMerchant2(n: 9, ar: [10, 20, 20, 10, 10, 30, 50, 10, 20])

