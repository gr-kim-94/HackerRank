import Cocoa

// 주어진 년도의 256일째 되는 날짜
// 윤년(4로 나누어지는 년도)에는 2월이 29일 존재
// 1월 31일, 2월 28~29일, 3월 31일, 4월 30일, 5월 31일, 6월 30일, 7월 31일, 8월 31일, 9월 30일 10월 31일 11월 30일 12월 31일
// return "dd.mm.yyyy"
func dayOfProgrammer(year: Int) -> String {
    if year % 4 == 0 {
        // 윤년
        // 31 + 29 + 31 + 30 + 31 + 30 + 31 + 31 = 244
        // 256 - 244 = 12
        return "12.09.\(year)"
    } else {
        // 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 = 243
        // 256 - 243 = 13
        return "13.09.\(year)"
    }
}

dayOfProgrammer(year: 2016)
dayOfProgrammer(year: 2017)
dayOfProgrammer(year: 2018)
dayOfProgrammer(year: 2019)
dayOfProgrammer(year: 2020)
