//
//  main.swift
//  p12m1|5
//
//  Created by Anton Tyurin on 04.07.2026.
//

import Foundation

// MARK: - Простой уровень

// Задание 1

let numbersArray: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

func sumNumbers(numbers: [Int]) -> Int {
    numbers.reduce(0, +)
}

print(sumNumbers(numbers: numbersArray))

// Задание 2

func isEven(numbers: [Int]) -> Int {
    var isEvenSum: Int = 0
    
    for i in numbers {
        if i % 2 == 0 {
            isEvenSum += 1
        }
    }
    
    return isEvenSum
}

print(isEven(numbers: numbersArray))

// Задание 3

let wordsCarArray: [String] = ["toyota", "lexus", "subaru", "bmw", "honda", "nissan", "mazda", "mini"]

func countWords(words: [String]) -> [String: Int] {
    var wordsCarDictionary: [String: Int] = [:]
    
    for word in words {
        wordsCarDictionary[word] = word.count
    }
    
    return wordsCarDictionary
}

print(countWords(words: wordsCarArray))

// MARK: - Средний уровень

// Задание 1

let numbersRepeatArray: [Int] = [1, 2, 3, 4, 2, 1, 7, 2, 8, 3, 1, 2, 4, 8, 8, 2, 7, 8, 3, 10]

func countRepeats(numbers: [Int]) -> [Int: Int] {
    var numbersRepeatDictionary: [Int: Int] = [:]
    
    for num in numbers {
        numbersRepeatDictionary[num, default: 0] += 1
    }
    
    return numbersRepeatDictionary
}

print(countRepeats(numbers: numbersRepeatArray))

// Задание 2

let fruitsArray: [String] = ["Apple", "Banana", "Strawberry", "Orange", "Banana", "Apple", "Mango", "Banana", "Orange", "Apple"]
let fruitsBasketArray: [String] = ["Banana", "Orange", "Apple", "Blackberry", "Watermelon"]

func unionFruits(fruits: [String], fruitsBasket: [String]) -> [String] {
    let allFruits: Set<String> = Set(fruits).union(fruitsBasket)
    return allFruits.sorted()
}

print(unionFruits(fruits: fruitsArray, fruitsBasket: fruitsBasketArray))

// Задание 3

let watchArray: [String] = ["Casio", "Seiko", "Casio", "Orient", "Longines", "Seiko", "Rolex", "Omega", "Patek Philippe", "Longines", "Casio"]

func wordsOften(words: [String]) -> String {
    var wordsDictionary: [String: Int] = [:]
    
    for word in words {
        wordsDictionary[word, default: 0] += 1
    }
    
    var mostOftenWord = ""
    var maxCount = 0
    
    for (word, count) in wordsDictionary {
        if count > maxCount {
            maxCount = count
            mostOftenWord = word
        }
    }
    
    return mostOftenWord
}

print(wordsOften(words: watchArray))








