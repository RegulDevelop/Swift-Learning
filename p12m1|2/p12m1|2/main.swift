//
//  main.swift
//  p12m1|2
//
//  Created by Anton Tyurin on 02.07.2026.
//

import Foundation

// Задание 1

var name: String? = nil
name = "Антон"

if let name {
    print(name)
}

// Задание 2

var age: Int? = nil

if let age {
    print(age)
} else {
    print("Возраст не указан")
}

// Задание 3

var nickname: String? = "ErrorNil"

if let nickname {
    print("Твой ник: \(nickname)")
} else {
    print("Ника нет")
}

// Задание 4

var email: String? = nil

if let email {
    print("Твой email: \(email)")
} else {
    print("Email не задан")
}

// Задание 5

var userName: String? = "Антон"
var userAge: Int? = 39
var userCity: String? = "Алматы"

print("""
Имя: \(userName ?? "Имя не указано")
Возраст: \(userAge ?? 0)
Город: \(userCity ?? "Город не указан")
""")

// Задание 6

var score: Int? = 85

if let score {
    if score >= 80 {
        print("Отлично")
    } else if score >= 50 {
        print("Хорошо")
    } else {
        print("Нужно подтянуть")
    }
} else {
    print("Нет данных")
}

// Задание 7

var numberString: String? = "42"

if let numberString, let number = Int(numberString) {
    print("Число: \(number)")
} else {
    print("Некорректное значение")
}

// Задание 8

var day: Int = 3

switch day {
case 1:
    print("Понедельник")
case 2:
    print("Вторник")
case 3:
    print("Среда")
default:
    print("День не распознан")
}

// Задание 9

var color: String = "red"

switch color {
case "red":
    print("Стой")
case "yellow":
    print("Жди")
case "green":
    print("Иди")
default:
    print("Неизвестный цвет")
}

// Задание доп 1

var myNumberString: String? = "123"

if let myNumberString, let myNumber = Int(myNumberString) {
    print("Число: \(myNumber)")
} else {
    print("Не удалось преобразовать")
}

// Задание доп 2

var userNameLogin: String? = "Alice"
var userPassword: String? = nil

if let name = userNameLogin, let _ = userPassword {
    print("Добро пожаловать, \(name)!")
} else {
    print("Введите имя и пароль")
}

// Задание доп 3

var enterName: String? = "Bob"
var enterEmail: String? = nil
var enterCountry: String? = "Kazakhstan"

if let enterName, let enterEmail, let enterCountry {
    print("Профиль: \(enterName), \(enterEmail), \(enterCountry)")
} else {
    print("Заполните все поля")
}
