//
//  main.swift
//  p12m1|14
//
//  Created by Anton Tyurin on 11.07.2026.
//

import Foundation

// Задание 1 - Функция поиска элемента 

let numbersArray: [Int] = [1, 2, 3, 4, 5]
let nameArray: [String] = ["Александр", "Степан", "Георгий", "Владислав"]

func containsElement<T: Equatable>(element: T, array: [T]) {
    for e in array {
        if e == element {
            print("Элемент \(e) есть в массиве")
            return
        }
    }
    print("Элемент \(element) нет в массиве")
}

containsElement(element: 1, array: numbersArray)
containsElement(element: 10, array: numbersArray)
containsElement(element: "Степан", array: nameArray)
containsElement(element: "Борис", array: nameArray)

// Задание 2 - Создать массив из двух элементов 

func createArray<T>(_ a: T, _ b: T) -> [T] {
    let newArray: [T] = [a, b]
    return newArray
}

print(createArray("Привет", "Мир"))
print(createArray(1, 2))

// Задание 3 - Напиши обобщённую функцию, которая сравнивает два значения (если тип поддерживает Equatable).

func isEqual<T: Equatable>(_ a: T, _ b: T) -> Bool {
    a == b
}

print(isEqual("hi", "hi"))
print(isEqual(10, 20))

// Задание 4 - Напиши функцию, которая создаёт словарь из массивов ключей и значений.

func makeDictionary<Key: Hashable, Value>(keys: [Key], values: [Value]) -> [Key: Value] {
    var dictionary: [Key: Value] = [:]

    for (index, key) in keys.enumerated() {
        dictionary[key] = values[index]
    }

    return dictionary
}

let keys: [String] = ["a", "b", "c"]
let values: [Int] = [1, 2, 3]

print(makeDictionary(keys: keys, values: values))

// Задание 5 - Обобщённая структура Pair 

struct Pair<T1, T2> {
    let firstValue: T1
    let secondValue: T2
}

let pairOne = Pair(firstValue: 1.333, secondValue: "Bob")
let pairTwo = Pair(firstValue: true, secondValue: 111)

print(pairOne)
print(pairTwo)

// Сложнее

// Задание 1 - Создай класс Cache<Key, Value>, где Key: Hashable. 

class Cache<Key: Hashable, Value> {
    
    var dictionary: [Key: Value] = [:]
    
    func set(key: Key, value: Value) {
        dictionary[key] = value
    }
    
    func get(key: Key) -> Value? {
        dictionary[key]
    }
    
    func remove(key: Key) {
        dictionary.removeValue(forKey: key)
    }
    
}

let stringCache = Cache<String, String>()

stringCache.set(key: "hello", value: "world")

print(stringCache.get(key: "hello") ?? "Not found")

stringCache.remove(key: "hello")
print(stringCache.get(key: "hello") ?? "Not found")

// Задание 2 - Класс KeyValueStore 

class KeyValueStore<Key: Hashable, Value> {
    
    var storage: [Key: Value] = [:]
    
    func set(_ value: Value, for key: Key) {
        storage[key] = value
    }
    
    func get(for key: Key) -> Value? {
        storage[key]
    }
    
}

let userAges = KeyValueStore<String, Int>() 

userAges.set(25, for: "Alice")
userAges.set(30, for: "Bob")

print(userAges.get(for: "Alice") ?? 0)
print(userAges.get(for: "Bob") ?? 0)

// Задание 3 - Класс Logger

class Logger<T> {
    
    var loggerArray: [T] = []
    
    func add(_ value: T) {
        loggerArray.append(value)
    }
        
    func showAll() {
        for item in loggerArray {
            print(item)
        }
    }
    
}

let intLogger = Logger<Int>() 

intLogger.add(1)
intLogger.add(2)

intLogger.showAll()

let stringLogger = Logger<String>() 

stringLogger.add("Start")
stringLogger.add("End")

stringLogger.showAll()

// Задание 4 - Создай протокол Repository, который хранит данные

protocol Repository {
    associatedtype Item
    func save(_ item: Item)
    func getAll() -> [Item]
}

class RepositoryStorage<T>: Repository {

    typealias Item = T

    var items: [T] = []

    func save(_ item: T) {
        items.append(item)
    }

    func getAll() -> [T] {
        items
    }
}

let todos = RepositoryStorage<String>()
let number = RepositoryStorage<Int>()

todos.save("Почистить зубы")
todos.save("Изучить Swift")

number.save(777)
number.save(444)

print(todos.getAll())
print(number.getAll())
