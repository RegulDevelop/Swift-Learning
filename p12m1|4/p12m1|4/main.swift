//
//  main.swift
//  p12m1|4
//
//  Created by Anton Tyurin on 03.07.2026.
//

import Foundation

// MARK: - Set

// Задание 1

let numbers: [Int] = [1, 2, 3, 2, 4, 1, 5]
let uniqueNumbers = Set(numbers)

print(uniqueNumbers)

// Задание 2

let a: Set<Int> = [1, 2, 3, 4]
let b: Set<Int> = [3, 4, 5, 6]

let c = a.intersection(b)

print(c)

// Задание 3

let first: Set<Int> = [1, 2, 3, 4]
let second: Set<Int> = [3, 4, 5, 6]

let symetricDiff = first.symmetricDifference(second)

print(symetricDiff)

// Задание 4

let countText = "Hello, world!"

let charactersSet: Set<Character> = Set(countText
    .lowercased()
    .replacingOccurrences(of: (" "), with: "")
    .replacingOccurrences(of: ",", with: "")
    .replacingOccurrences(of: "!", with: "")
)

print(charactersSet.count)

// MARK: - Dictionary

// Задание 1

let capitals = ["Kazakhstan": "Astana", "France": "Paris", "Japan": "Tokyo"]

var capitalsDictionary: [String: String] = [:]

for (country, capital) in capitals {
    capitalsDictionary[capital] = country
}

print(capitalsDictionary)

// Задание 2

let words = ["apple", "banana", "avocado", "blueberry", "cherry", "apricot"]

var wordsDictionary: [Character: [String]] = [:]

for word in words {
    if let firstLetter = word.first {
        wordsDictionary[firstLetter] = (wordsDictionary[firstLetter] ?? []) + [word]
    }
}

print(wordsDictionary)

// Задание 3

let text = "banana"

var textDictionary: [Character: Int] = [:]

for char in text {
    if let value = textDictionary[char] {
        textDictionary[char] = value + 1
    } else {
        textDictionary[char] = 1
    }
}

print(textDictionary)

// Задание 4

let votes = ["Alice", "Bob", "Alice", "Charlie", "Bob", "Alice"]

var votesDictionary: [String: Int] = [:]

for vote in votes {
    if let value = votesDictionary[vote] {
        votesDictionary[vote] = value + 1
    } else {
        votesDictionary[vote] = 1
    }
}

var winnerName = ""
var maxVotesCount = 0

for (name, count) in votesDictionary {
    if count > maxVotesCount {
        maxVotesCount = count
        winnerName = name
    }
}

print("Победитель: \(winnerName), голосов: \(maxVotesCount)")

// Задание 5

let wordsArray = ["cat", "dog", "elephant", "bat", "apple"]

var wordsArrayDictionary: [Int: [String]] = [:]

for word in wordsArray {
        wordsArrayDictionary[word.count] = (wordsArrayDictionary[word.count] ?? []) + [word]
}

print(wordsArrayDictionary)

