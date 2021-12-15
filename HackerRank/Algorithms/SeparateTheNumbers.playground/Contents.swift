import Cocoa

/*
 숫자 문자열 = {n, n+1, n+2}
 
 s[i] , i = [0-9]
 
 s = 12345 = {1, 2, 3, 4, 5} -> YES
 s = 91011 = {9, 10, 11} -> YES
 s = 10203 = {1, 02, 03} -> NO
 s = 101103 = {10, 11, 03} -> NO
 */
func separateNumbers(s: String) -> Void {
//    let arr = Array(s)
//    for (index, value) in arr.enumerated() {
//        if index == arr.endIndex {
//        } else {
//            let nextValue = arr[index + 1]
//            print(nextValue)
//            s
//            if value < nextValue {
//
//            }
//        }
//    }
}

separateNumbers(s: "12345")
separateNumbers(s: "91011")
separateNumbers(s: "10203")
separateNumbers(s: "101103")

separateNumbers(s: "121314")
