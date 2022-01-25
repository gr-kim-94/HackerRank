import Cocoa

func dynamicArray1(n: Int, queries: [[Int]]) -> [Int] {
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
            lastAnswer.append(arr[idx][querie[2]%arr[idx].count])
        }
    }
    
    return lastAnswer
}

// 가변 데이터 n 적용, arr에서 last 찾지않고 lastAnswer 변수로 저장
func dynamicArray(n: Int, queries: [[Int]]) -> [Int] {
    var arr = Array(repeating: [Int](), count: n)
    var list = [Int]()
    var lastAnswer = 0
    
//    for querie in queries {
    queries.forEach { querie in
        let x = querie[1]
        let y = querie[2]
        let idx = (x ^ lastAnswer) % n
        
        if querie[0] == 1 {
            arr[idx].append(y)
        } else {
            let arrIdx = arr[idx]
            lastAnswer = arrIdx[y%(arrIdx.count)]
            list.append(lastAnswer)
        }
    }

    return list
}


dynamicArray(n: 2, queries: [[1,0,5],[1,1,7],[1,0,3],[2,1,0],[2,1,1]])
