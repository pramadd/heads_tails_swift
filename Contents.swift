//: Playground - noun: a place where people can play

import UIKit

//func tosscoin(name: String = "Tossing a coin") {
//    print(" \(name)")
//}
//// We can call it without providing any arguments and the default value will be used...
//tosscoin()



func tossingCoin() -> String {
    let coin = Int(arc4random_uniform(UInt32(2)))

    if coin == 0 {
        return "Heads"
    }else {
        return "Tails"
    }
}
tossingCoin()

func tossMultipleCoins(x: Int) -> Double {

    var headsCount = 0
    var tailsCount = 0

    for _ in 0...x {
        if tossingCoin() == "Heads" {
            headsCount += 1
        }else {
            tailsCount += 1
        }
    }

    return Double(x) / Double(headsCount)
}


tossMultipleCoins(x: 10)

