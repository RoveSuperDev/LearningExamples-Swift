//: [Previous](@previous)

import Foundation

let number = 10


//Tuple 元组

typealias Person = (name: String, age: Int, wallet: Double)

let nick: Person = ("张三",10,2000000000)
print(nick.0)

let isOpen = true

if (isOpen) {
    print("打开")
}else{
    print("关闭")
}

if isOpen {
    print("打开")
}else{
    print("关闭")
}

let amount = 2000.559
let amountString = String(format: "哈哈哈我今天花了%.2f元", amount)
print(amountString)

import Foundation

let formater = NumberFormatter()
formater.maximumFractionDigits = 2
formater.numberStyle = .spellOut
formater.roundingMode
formater.locale = Locale.init(identifier: "zh-ch")
print(formater.string(for:amount)!)
print(formater.string(for:Double.greatestFiniteMagnitude)!)





//: [Next](@next)
