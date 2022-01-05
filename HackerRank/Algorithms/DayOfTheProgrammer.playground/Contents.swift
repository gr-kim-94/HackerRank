import Cocoa

/*
 Julian calendar (율리우스력) : 1700 ~ 1917
 1918년은 율리우스력에서 그레고리력으로 바뀌는 해 : 1918.01.31 + (1 day) = 1918.2.14
 1918년의 32일째 되는 날은 1918.2.14
 Gregorian calendar (그레고리력) : 1919 ~
 
 윤년 : 2월에 29일이 존재하는 해
 율리우스력 : 4로 나누어지는 해
 그레고리력 : 400으로 나누어지는 해 || 4로 나누어지나 100으로 나누어지지 않는 해
 
 1월 31일, 2월 28~29일, 3월 31일, 4월 30일, 5월 31일, 6월 30일, 7월 31일, 8월 31일, 9월 30일 10월 31일 11월 30일 12월 31일
 
 윤년 O : 31 + 29 + 31 + 30 + 31 + 30 + 31 + 31 = 244
 -> 9월 12(256 - 244)일
 윤년 X : 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 = 243
 -> 9월 13(256 - 243)일
 */

// 주어진 년도의 256일째 되는 날짜
// param year : 1700 ~ 2700
// return "dd.mm.yyyy"
func dayOfProgrammer(year: Int) -> String {
    if year < 1918 {
        // 율리우스력
        if year % 4 == 0 {
            return "12.09.\(year)"
        } else {
            return "13.09.\(year)"
        }
    } else if year > 1918 {
        // 그레고리력
        if (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0) {
            return "12.09.\(year)"
        } else {
            return "13.09.\(year)"
        }
    } else {
        // year == 1918
        // + 13 day
        return "26.09.1918"
    }
}

dayOfProgrammer(year: 2016)
dayOfProgrammer(year: 2017)
dayOfProgrammer(year: 2018)
dayOfProgrammer(year: 2019)
dayOfProgrammer(year: 2020)
dayOfProgrammer(year: 2000)
dayOfProgrammer(year: 1800)
