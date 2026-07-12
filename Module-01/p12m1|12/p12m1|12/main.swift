//
//  main.swift
//  p12m1|12
//
//  Created by Anton Tyurin on 08.07.2026.
//

import Foundation

// Задание 1 - Создай клоужер, который просто выводит "Hello, Swift!"

let hello: () -> Void = {
    print("Hello, Swift!")
}

hello()

// Задание 2 - Создай клоужер, который принимает имя и выводит приветствие.

let greet: (String) -> Void = { name in
    print("Hello, \(name)!")
}

greet("Anton")

// Задание 3 - Создай клоужер, который принимает два числа и возвращает их сумму.

let add: (Int, Int) -> Int = { $0 + $1 }

let sum = add(3, 4)

print(sum)

// Задание 4 - Создай функцию, которая принимает клоужер(простой, ничего не принимает и не возвращает () -> Void) и вызывает его.

func doSomething(completion: () -> Void) {
    completion()
}

doSomething {
    print("Действие выполнено!")
}

// Задание 5 - Функция должна принять клоужер, который принимает число и печатает его квадрат.

func printSquare(number: Int, completion: (Int) -> Void) {
    completion(number)
}

printSquare(number: 3) { number in
    print("\(number) в квадрате равно \(number * number)")
}



