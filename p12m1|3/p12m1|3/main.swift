//
//  main.swift
//  p12m1|3
//
//  Created by Anton Tyurin on 02.07.2026.
//

import Foundation

// MARK: - Легкий уровень

// Задание 1

var numbersArray: [Int] = [4, 8, 16, 1, 33]

for number in numbersArray {
    print(number)
}

// Задание 2

numbersArray.append(100)
numbersArray.insert(777, at: 0)

print(numbersArray)

// Задание 3

var lastNumberArray: Int = numbersArray.removeLast()

print(lastNumberArray)

// Задание 4

print(numbersArray.first ?? 0)
print(numbersArray.last ?? 0)

// Задание 5

let sumArray: Int = numbersArray.reduce(0, +)

print(sumArray)

// Задание 6

let isContains = numbersArray.contains(10)

print(isContains)

// Задание 7

print(numbersArray.count)

// Задание 8

numbersArray[2] = 9999

print(numbersArray)

// MARK: - Чуть сложнее

// Задание 1

let fruits = ["banana", "orange", "apple", "kiwi"]

if fruits.contains("apple") {
    print("Яблоко обнаружено в массиве")
} else {
    print("Яблоко не обнаружено в массиве")
}

// Задание 2

for sort in fruits.sorted() {
    print(sort)
}

// Задание 3

for fruit in fruits {
    if fruit.count > 5 {
        print(fruit)
    }
}

// Задание 4

let str: String = "Казак".lowercased().replacingOccurrences(of: " ", with: "")

var strArray: [Character] = []

for i in str {
    strArray.append(i)
}

if strArray == strArray.reversed() {
    print("Палиндром")
} else {
    print("Не палиндром")
}

// Задание 5

var numbersCountArray: [Int] = [3, 44, 18, 101, 3, 222, 123]

var countNumber: Int = 0

for number in numbersCountArray {
    if number == 3 {
        countNumber += 1
    }
}

print(countNumber)

// Задание 6

numbersCountArray.removeAll { $0 < 5 }

print(numbersCountArray)

// Задание 7

let numbersForSum = [10, 20, 30, 40, 50]

var total = 0

for number in numbersForSum {
    total += number
}

print(total)
