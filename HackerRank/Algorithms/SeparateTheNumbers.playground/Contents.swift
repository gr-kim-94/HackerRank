import Cocoa

/*
 숫자 문자열 = {n, n+1, n+2}
 
 s[i] , i = [0-9]
 
 s = 12345 = {1, 2, 3, 4, 5} -> YES
 s = 91011 = {9, 10, 11} -> YES
 s = 10203 = {1, 02, 03} -> NO
 s = 101103 = {10, 11, 03} -> NO
 */
// 진행중
func separateNumbers(s: String) -> Void {
    var isSeparate = false
    var first:String = ""
    for (index, _) in s.enumerated() {
        let endIndex = s.index(s.startIndex, offsetBy: index + 1)
        first = String(s[s.startIndex..<endIndex])
        print(first)
        
        let firstNumber = Int(first) ?? 0
        print(firstNumber)
        
        var nextNumber = firstNumber + 1
        var lastCount = first.count + String(nextNumber).count
        
        while lastCount < s.count {
            let lastStartIndex = s.index(s.startIndex, offsetBy: index + 1)
        }
        
        if isSeparate {
            break
        }
        
    }
}

separateNumbers(s: "12345")
separateNumbers(s: "91011")
separateNumbers(s: "10203")
separateNumbers(s: "101103")

separateNumbers(s: "121314")
