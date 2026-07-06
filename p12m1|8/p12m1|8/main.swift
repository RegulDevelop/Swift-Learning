//
//  main.swift
//  p12m1|8
//
//  Created by Anton Tyurin on 06.07.2026.
//

import Foundation

// MARK: - Вычисляемые свойства

// Задание 1 - Температурный конвертер 

struct Temperature {
    
    let celsius: Double
    
    var fahrenheit: Double {
        celsius * 9 / 5 + 32
    }
}

let julyTemperature: Temperature = Temperature(celsius: +35)

print("Температура в Фаренгейтах: \(julyTemperature.fahrenheit)")

// Задание 2

struct Rectangle {
    
    let width: Double
    let height: Double
    
    var perimeter: Double {
        2 * (width + height)
    }
    
}

let bedroom: Rectangle = Rectangle(width: 2.8, height: 3.5)

print("Периметр комнаты: \(bedroom.perimeter)")

// Задание 3 - Банковский счёт 

struct BankAccount {
    
    let balance: Double
    
    var formattedBalance: String {
        "Ваш баланс: \(balance)"
    }
    
    var isOverdrawn: Bool {
        balance < 0
    }
    
}

let myAccount: BankAccount = BankAccount(balance: -100)

print(myAccount.formattedBalance)
print(myAccount.isOverdrawn)

// Задание 4 - Задача про корзину покупок 

struct CartItem {
    
    let name: String
    let pricePerItem: Double
    let quantity: Int
    
    var totalPrice: Double {
        pricePerItem * Double(quantity)
    }
    
}

let milk: CartItem = CartItem(name: "Молоко", pricePerItem: 1000.50, quantity: 1)
let bread: CartItem = CartItem(name: "Хлеб", pricePerItem: 320.10, quantity: 2)

print("Цена молока: \(milk.totalPrice)")
print("Цена хлеба: \(bread.totalPrice)")

// MARK: - Наблюдатели свойств

// Задание 1 - Счётчик лайков 

struct Post {
    
    var likes: Int {
        didSet {
            print("Лайков стало \(likes)")
        }
    }
    
}

var photo: Post = Post(likes: 0)

photo.likes += 1
photo.likes += 3

// Задание 2 - Счётчик шагов 

struct StepTracker {
    
    var steps: Int {
        didSet {
            print("Сегодня пройдено \(steps) шагов")
            
            if steps > 10_000 {
                print("Цель достигнута!")
            }
        }
    }
    
}

var tracker: StepTracker = StepTracker(steps: 0)

tracker.steps += 5000
tracker.steps += 2000
tracker.steps += 4000

// Задание 3 - Счётчик денег 

struct Wallet {
    
    var money: Double {
        didSet {
            if money < 0 {
                print("У вас долг: \(money)")
            } else if money > oldValue {
                print("Поступление: \(money - oldValue)")
            } else if money < oldValue {
                print("Трата: \(oldValue - money)")
            }
        }
    }
    
}

var myWallet: Wallet = Wallet(money: 1000)

myWallet.money += 500
myWallet.money -= 300
myWallet.money -= 1500

// Задание 4 - Проверка пароля 

struct UserAccount {
    
    var password: String {
        willSet {
            if newValue.count < 6 {
                print("Пароль слишком короткий!")
            }
        }
        didSet {
            if !password.isEmpty {
                print("Пароль обновлён")
            }
        }
    }
    
}

var alexAccount: UserAccount = UserAccount(password: "12345")

alexAccount.password = ""
alexAccount.password = "1234567"
    






