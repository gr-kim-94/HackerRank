import Cocoa

func getTotalX(a: [Int], b: [Int]) -> Int {
    var list:[Int] = []
    
    guard let aLast = a.last, let bFirst = b.first, aLast < bFirst else {
        return 0
    }
    
    for x in aLast ... bFirst {
        // a 약수 체크
        let xa = a.filter {
            x % $0 == 0
        }
        
        // b 배수 체크
        let xb = b.filter {
            $0 % x == 0
        }
        
        if xa.count == a.count && xb.count == b.count {
            list.append(x)
        }
    }
    
    print(list)
    
    return list.count
}


getTotalX(a: [2,6], b: [24,36])
getTotalX(a: [3,4], b: [24,48])
getTotalX(a: [2,4], b: [16,32,96])
getTotalX(a: [100,99,98,97,96,95,94,93,92,91], b: [1,2,3,4,5,6,7,8,9,10])

