import Foundation
//Урок 4 ДЗ
/*
 №1.  Используя условные операторы, функции и циклы создать следующую программу:
 Разобрать числа от 1 до 1000
 Выписать через запятую все числа, кратные 2, 3, 4, 5 (для каждого числа разные переменные)
 */

var num2 = ""
var num3 = ""
var num4 = ""
var num5 = ""

func numbers() {
    for item in 1...1000 {
        if (item % 2 == 0) {
            num2 += "Числа кратные 2 -\(item), "
            print (num2)
        }
        if (item % 3 == 0) {
            num3 += "Числа кратные 3 -\(item), "
            print (num3)
        }
        if (item % 4 == 0) {
            num4 += "Числа кратные 4 -\(item), "
            print (num4)
        }
        if (item % 5 == 0) {
            num5 += "Числа кратные 5 -\(item) "
            print (num5)
        }
    }
}
print(numbers())
/*
 Создать программу используя известные вам методы
 Рассчитать сумму кредита. Изначально сумма - 1000000 сом
 Процентная ставка в год - 24%
 С каждым годом % снижается на 1
 Рассчитать за какой срок человек сможет выплатить кредит, если на момент получения кредита его зарплата - 20000 сом и каждые 2 месяца она увеличивается на 2000
 */
var creditAmount: Float = 1_000_000
var creditPercent: Float = 0.24
var salary: Float = 20_000
var myMoney = 0
var month = 0

creditAmount += creditAmount * creditPercent
for money in 1...100 {
    month += 1
    if money % 2 == 0 {
        salary += 2000
    }
    if money % 12 == 0 {
        creditAmount += creditAmount * creditPercent
        creditPercent -= 0.01
    }
    print (creditAmount)
    let pay = creditPercent / 12
    print (pay)
    let monthlyPayment = salary * (1 - (pay / 100))
    creditAmount -= monthlyPayment
    if creditAmount < 0 {
        break
    }
}
print("Миллион сом можно выплатить за \(month) месяцев")

/*
 Доп:
 Используя условные операторы, функции и циклы создать следующую программу:
 Записать в одну переменную типа String 20 разных слов (с разной длиной) через запятую
 После того, как созданная ранее функция примет как аргумент созданную строку - вернет следующее (например) - “Яблоко - 6 символов \n Морковь - 7 символов” и т.д до последнего слова

 */
//Вариант 1
//var appleProducts = ["Apple", "Lisa", "Macintosh", "iPod", "iPhone", "iPad", "MacBook", "iMac", "AirPods", "AirTag", "HomePod", "AppleWatch", "iCloud", "AppleTV", "AppleMusic", "AppStore", "ApplePay", "Beats", "AppleStore", "Swift"]
//
//func words (apple: [String]) {
//    for word in appleProducts {
//        print ("\(word) - \(word.count) символов")
//    }
//}
//words(apple: appleProducts)

//Вариант 2
var string = ""
var appleProducts = "Apple, Lisa, Macintosh, iPod, iPhone, iPad, MacBook, iMac, AirPods, AirTag, HomePod, AppleWatch, iCloud, AppleTV, AppleMusic, AppStore, ApplePay, Beats, AppleStore, Swift"
var count = 0

for appleProducts in appleProducts {
    if appleProducts != "," {
        count += 1
        string += String(appleProducts)
    }
    if appleProducts == "," {
        print ("\(string) - \(count - 1) - символов")
        count = 0
        string = ""
    }
}

print ("Какое действие совершить?\n +, -, *, /, sin, cos")
let action = readLine()!

func math (num1: Int, num2: Int, num3: Int) {
    if action == "+" {
        print (num1 + num2)
    } else if action == "-" {
        print (num1 - num2)
    } else if action == "*" {
        print (num1 * num2)
    } else if action == "/" {
        print (num1 / num2)
    } else if action == "sin" {
        print (num1 / num2)
    } else if action == "cos" {
        print (num3 / num2)
}
}

print ("Введите первое число")
let firstNumberReadline = Int(readLine()!)
print ("Введите второе число")
let secondNumberReadline = Int(readLine()!)
print ("Введите третье число")
let thirdNumberReadline = Int(readLine()!)

math (num1: firstNumberReadline!, num2: secondNumberReadline!, num3: thirdNumberReadline!)

