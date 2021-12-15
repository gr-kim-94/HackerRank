import Cocoa

func gradingStudents(grades: [Int]) -> [Int] {
    let newGrades:[Int] = grades.map {
        if $0 <= 35 {
            return $0
        }
        
        let standard = Int(ceil(Double($0)/5.0)) * 5
        let interval = standard - $0
        if interval < 3 {
            return standard
        }
        else {
            return $0
        }
    }
    
    return newGrades
}

gradingStudents(grades: [73, 67, 38, 33])
