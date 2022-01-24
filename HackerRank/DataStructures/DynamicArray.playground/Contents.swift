import Cocoa

func dynamicArray(n: Int, queries: [[Int]]) -> [Int] {
    var arr:[[Int]] = [[],[]]
    var lastAnswer:[Int] = []
    queries.forEach { querie in
        /* 1 x y
         1인 경우, arr[idx]에 y 정수 추가.
         idx = (x or lastAnswer) % n)
         */
        /* 2 x y
         2인 경우, lastAnswer에 값 추가
         idx = (x or lastAnswer) % n)
         
         lastAnswer에 arr[idx][y%size(arr[idx])] 정수 추가
         */
        
        let idx = (querie[1] ^ (lastAnswer.last ?? 0)) % n
        if querie[0] == 1 {
            arr[idx].append(querie[2])
        } else {
            // querie[0] == 2
            let dd = arr[idx][querie[2]%arr[idx].count]
            lastAnswer.append(dd)
        }
    }
    
    return lastAnswer
}

dynamicArray(n: 2, queries: [[1,0,5],[1,1,7],[1,0,3],[2,1,0],[2,1,1]])
