import Cocoa

func staircase(n: Int) -> Void {
    for i in 1...n {
        var lineString = ""
        
        for j in 1...n {
            // i == 1, j == 1 " "
            // i == 1, j == 2 " "
            // i == 1, j == 3 "#"
            
            // i == 2, j == 1 " "
            // i == 2, j == 2 "#"
            // i == 2, j == 3 "#"
            
            // i == 3, j == 1 "#"
            // i == 3, j == 2 "#"
            // i == 3, j == 3 "#"
            
            if j <= (n-i) {
                lineString += " "
            } else {
                lineString += "#"
            }
        }
        
        print(lineString)
    }
}

staircase(n: 3)

// n == 3
/*
  #
 ##
###
 */
