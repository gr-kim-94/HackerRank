import Cocoa

/*
 bill 주문한 각 항목의 비용을 나타내는 정수 배열
 k    Anna가 먹지 않는 항목의 0부터 시작하는 인덱스를 나타내는 정수
 b    Anna가 낸 금액
 
 Anna가 낸 금액 - 정상적으로 계산했을 때 내야하는 금액
 */
func bonAppetit(bill: [Int], k: Int, b: Int) -> Void {
    let billSum = bill.reduce(0) { $0 + $1 }
    let originB = (billSum - bill[k])/2
    let newB = b - originB
    print(newB == 0 ? "Bon Appetit":newB)
}

bonAppetit(bill: [3,10,2,9], k: 1, b: 12)
bonAppetit(bill: [3,10,2,9], k: 1, b: 7)
