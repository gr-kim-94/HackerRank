import Cocoa

// Down
// UP
// point > 0 산
// point = 0 해수면
// point < 0 계곡
// return 몇개의 계곡을 지나는지?
func countingValleys(steps: Int, path: String) -> Int {
    var point = 0
    var count = 0
    
    path.forEach {
        let prePoint = point
        
        if $0 == "D" {
            point -= 1
        } else {
            // U
            point += 1
        }
        
        if prePoint < 0 && point == 0 {
            count += 1
        }
    }
    
    return count
}

func countingValleys2(steps: Int, path: String) -> Int {
    var point = 0
    var count = 0
    
    path.forEach {
        if $0 == "D" {
            point -= 1
        } else {
            // U
            if point == -1 {
                count += 1
            }
            point += 1
        }
    }
    
    return count
}


countingValleys(steps: 8, path: "UDDDUDUU")
countingValleys(steps: 12, path: "DDUUDDUDUUUD")
countingValleys(steps: 8, path: "DDDDUUUU")
