import UIKit



enum HanleType : String {
    case Cancel = "cancel"
    case Delete = "delete"
}

var handleType : HanleType!

handleType = .Delete


if(handleType.rawValue.elementsEqual("cancel")){
    print("处理类型 取消")
}


func handleFee(_ soce:Float){
    if(soce <= 80){
        print("学费7200元/年")
    }else if(soce >= 92){
        print("免除所有学费")
    }else{
        print("你未达到入学条件")
    }
}

//handleFee(100)

enum Gender: Int {
    case female = 0
    case male = 1
}

func calculate(_ gerder: Gender, _ age: Int , _ weight: Double, _ stature: Double){
    if(age < 18){
        print("还未成年哦，多吃多运动！")
        return
    }
    let bmi = weight / ((stature / 100) * (stature / 100))
    let rate = 1.2 * bmi + 0.23 * Double(age) - 5.4 - 10.8 * Double(gerder.rawValue) ;
    let formater = NumberFormatter()
    formater.maximumFractionDigits = 0
    print("你的体脂是\(formater.string(for: rate)!)")
    var difference = 0.0
    if(age >= 39 && age < 60){
        difference = gerder == Gender.male ? 3: 2
    }else if(age >= 60){
        difference = gerder == Gender.male ? 5: 3
    }
    let selfRate = rate - difference
    
    let type01 = gerder == Gender.male ? 8 + difference : 21 + difference
    let type02 = gerder == Gender.male ? 20 + difference  : 33 + difference
    let type03 = gerder == Gender.male ? 25 + difference  : 38 + difference
    if(rate < type01){
        print("体脂偏低,正常体脂范围是\(type01) ~ \(type02)")
    }
    if(rate >= type01 && rate < type02){
        print("正常体脂")
    }
    if(rate >= type02 && rate < type03){
        print("体脂偏高,正常体脂范围是\(type01) ~ \(type02)")
    }
    if(rate >= type03){
        print("太胖了,正常体脂范围是\(type01) ~ \(type02)")
    }
}

calculate(.male, 32, 70, 173)

calculate(.male, 60, 70, 173)

