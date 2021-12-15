import Cocoa

/*
 12시간 Date를 24시간 Date로 변환하는 알고리즘
 
 DateFormat
 hh 12시간 형식 / HH 24시간 형식
 mm 분
 ss 초 / SSS 밀리초
 a AM-PM
 */
func timeConversion(s: String) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "hh:mm:ssa"
    let originDate = dateFormatter.date(from: s)
    dateFormatter.dateFormat = "HH:mm:ss"
    let date = dateFormatter.string(from: originDate!)
    
    return date
}

var time = "12:01:00PM"
timeConversion(s: time)

time = "07:05:00PM"
timeConversion(s: time)

time = "12:01:00AM"
timeConversion(s: time)
