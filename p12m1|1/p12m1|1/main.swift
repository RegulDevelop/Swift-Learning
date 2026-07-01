//
//  main.swift
//  p12m1|1
//
//  Created by Anton Tyurin on 01.07.2026.
//

import Foundation

// MARK: - Конкатинация

// Задание 1

let firstName: String = "Антон"
let lastName: String = "Тюрин"
let fullName = firstName + " " + lastName

print(fullName)

// Задание 2

var age: Int = 39
let message = "Меня зовут " + firstName + ", и мне " + String(age) + " лет."

print(message)

// Задание 3

var numberOne: Int = 0
var numberTwo: Int = 0

print("Введите первое число:")

if let input = readLine(), let number = Int(input) {
    numberOne = number
}

print("Введите второе число:")

if let input = readLine(), let number = Int(input) {
    numberTwo = number
}

let sum = numberOne + numberTwo

print("Сумма чисел " + String(numberOne) + " и " + String(numberTwo) + " равна " + String(sum) + ".")

// MARK: - Интерполяция строк

// Задание 1

print("Меня зовут \(firstName), и мне \(age) лет.")

// Задание 2

var userWeight: Float = 0
var userHeight: Float = 0

print("Введите ваш вес:")

if let input = readLine(), let weight = Float(input) {
    userWeight = weight
}

print("Введите ваш рост:")

if let input = readLine(), let height = Float(input) {
    userHeight = height
}

let bodyMassIndex = userWeight / (userHeight / 100 * userHeight / 100)

print("Ваш ИМТ равен \(bodyMassIndex).")

// Задание 3

var productName: String = "iPhone 17 Pro Max"
var price: Float = 99000.99
var quantity: Int = 2

print("Вы добавили в корзину \(quantity) шт. товара '\(productName)' на сумму \(price * Float(quantity)) руб.")

// MARK: - Основные типы данных

// Задание 1

let minValue: Int16 = -32768
let number: UInt8 = 200
let pi: Double = 3.1415926535
let isFinished: Bool = false
let quote: String = "Мы стали жесткими, недоверчивыми, безжалостными, мстительными, грубыми."

// Задание 2

var userNumber: Int = 0

print("Введите число:")

if let input = readLine(), let number = Int(input) {
    userNumber = number
}

let square = userNumber * userNumber

print("Квадрат числа \(userNumber) равен \(square).")

// Задание 3

var numberIsEven: Int = 4
let isEven: Bool = numberIsEven % 2 == 0

if isEven {
    print("Число \(numberIsEven) является четным.")
} else {
    print("Число \(numberIsEven) является нечетным.")
}

// MARK: - Переменные и константы

// Задание 1

var temperature: Int = 26

print("Сегодня температура \(temperature)°C")

temperature = 28

print("Завтра ожидается \(temperature)°C")

// Задание 2

let birthYear: Int = 1986
// birthYear = 1990
// Изменить значение константы невозможно, потому что она объявлена с помощью let.
// Константа может получить значение только один раз при создании.

// Задание 3

let count = 10
// count = "Десять"
// Swift автоматически определил тип переменной count как Int по присвоенному значению 10.
// После этого переменная может хранить только значения типа Int.
// Попытка присвоить String приводит к ошибке компиляции.

// MARK: - Логические значения и условные операторы (if/else)

// Задание 1

var numberCheck: Int = 0

print("Введите число:")

if let input = readLine(), let number = Int(input) {
    numberCheck = number

    if numberCheck > 0 {
        print("Число \(numberCheck) положительное.")
    } else if numberCheck == 0 {
        print("Это \(numberCheck).")
    } else {
        print("Число \(numberCheck) отрицательное.")
    }
    
}

// Задание 2

var userAge: Int = 0

print("Введите возраст:")

if let input = readLine(), let age = Int(input) {
    userAge = age
    
    if userAge >= 18 {
        print("Доступ разрешен")
    } else {
        print("Доступ запрещен")
    }
    
}
