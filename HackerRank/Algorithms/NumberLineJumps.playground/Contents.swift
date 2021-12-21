import Cocoa

func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    let x = Double(x2 - x1) / Double(v1 - v2)
    print(x)
    let isInteger = floor(x) == x
    return (x > 0 && isInteger) ? "YES" : "NO"
}

kangaroo(x1: 0, v1: 3, x2: 4, v2: 2)
// 0 + 3s = 4 + 2s
// (3 - 2)s = 4 - 0
// s = (4 - 0)/(3 - 2)
// YES

kangaroo(x1: 0, v1: 2, x2: 5, v2: 3)
