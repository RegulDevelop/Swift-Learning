//
//  main.swift
//  p12m1|10
//
//  Created by Anton Tyurin on 07.07.2026.
//

import Foundation

// Задание 1 - Расширение String

extension String {
    
    func isPalindrome() -> Bool {
        let text = self.lowercased().replacingOccurrences(of: " ", with: "")
        
        var characters: [Character] = []
        
        for char in text {
            characters.append(char)
        }
        
        if characters == characters.reversed() {
            return true
        }
        
        return false
    }
    
}

let palindromeOne = "А роза упала на лапу Азора"
let palindromeTwo = "А роза упала на лапу"


print(palindromeOne.isPalindrome())
print(palindromeTwo.isPalindrome())

// Задание 2 - Расширение Int

extension Int {
    
    func squared() -> Int {
        self * self
    }
    
}

let numberOne: Int = 5
let numberTwo: Int = 10

print(numberOne.squared())
print(numberTwo.squared())

// Задание 3 - Класс "Person"

class Person {
    
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
}

extension Person {
    
    func introduce() {
        print("Меня зовут \(name), мне \(age) лет")
    }
    
}

let personOne = Person(name: "Дмитрий", age: 45)

personOne.introduce()

// Задание 4 - Протокол "Drawable" 

protocol Drawable {
    func draw()
}

class Circle: Drawable {
    
    let radius: Int
    
    init(radius: Int) {
        self.radius = radius
    }
    
    func draw() {
        print("Рисую круг радиусом \(radius)")
    }
    
}

class Square: Drawable {
    
    let side: Int
    
    init(side: Int) {
        self.side = side
    }
    
    func draw() {
        print("Рисую квадрат со стороной \(side)")
    }
}

let circle = Circle(radius: 5)
let square = Square(side: 3)

circle.draw()
square.draw()

// Задание 5 - Протокол "Calculatable"

protocol Calculatable {
    func calculate(a: Int, b: Int) -> Int
}

struct Adder: Calculatable {
    func calculate(a: Int, b: Int) -> Int {
        a + b
    }
}

struct Multiplier: Calculatable {
    func calculate(a: Int, b: Int) -> Int {
        a * b
    }
}

let adder = Adder()
let multiplier = Multiplier()

print(adder.calculate(a: 100, b: 100))
print(multiplier.calculate(a: 2, b: 2))

// Задание 6 - Протокол "Printable" 

protocol Printable {
    func printInfo()
}

class Car: Printable {

    let brand: String

    init(brand: String) {
        self.brand = brand
    }

    func printInfo() {
        print("Марка автомобиля: \(brand)")
    }
    
}

class Phone: Printable {
    
    let model: String
    
    init(model: String) {
        self.model = model
    }
    
    func printInfo() {
        print("Модель телефона: \(model)")
    }
    
}

let myCar = Car(brand: "Toyota")
let myPhone = Phone(model: "iPhone 12")

myCar.printInfo()
myPhone.printInfo()

// Задание 7 - Протокол "Named" 

protocol Named {
    var name: String { get }
}

class Dog: Named {
    
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func nameIt() {
        print("Мою собаку зовут \(name)")
    }
    
}

struct Book: Named {
    
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func read() {
        print("Читаю книгу: \(name)")
    }
}

let myDog = Dog(name: "Ханни")
let myBook = Book(name: "Гиперион")

myDog.nameIt()
myBook.read()
