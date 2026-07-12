//
//  main.swift
//  p12m1|9
//
//  Created by Anton Tyurin on 06.07.2026.
//

import Foundation

// Задание 1 - Простой класс "Человек" 

class Person {
    
    let name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func sayHello() {
        print("Привет, меня зовут \(name)")
    }
    
    func celebrateBirthday() {
        age += 1
    }
    
}

let personOne: Person = Person(name: "Александр", age: 30)
let personTwo: Person = Person(name: "Виктор", age: 65)

personOne.sayHello()
personTwo.sayHello()

// Задание 2 - Класс "Машина" и водитель 

class Car {
    
    let model: String
    var owner: Person?
    
    init(model: String, owner: Person?) {
        self.model = model
        self.owner = owner
    }
    
    func assignOwner(_ owner: Person) {
        self.owner = owner
    }
    
}

let carOne: Car = Car(model: "Toyota Corolla", owner: personOne)
let carTwo: Car = Car(model: "Ford Mustang", owner: nil)

carTwo.assignOwner(personTwo)

print("Владелец \(carOne.model): \(carOne.owner?.name ?? "не указан")")
print("Владелец \(carTwo.model): \(carTwo.owner?.name ?? "не указан")")

// Задание 3 - Метод, изменяющий состояние 

print(personOne.age)
personOne.celebrateBirthday()
print(personOne.age)

// Задание 4 - Наследование 

class Animal {
    
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func makeSound() {
        print("...")
    }
    
}

class Dog: Animal {
    
    let breed: String
    
    init(breed: String, name: String) {
        self.breed = breed
        super.init(name: name)
    }
    
    override func makeSound() {
        print("Гав")
    }
    
}

class Cat: Animal {
    
    override func makeSound() {
        print("Мяу")
    }
    
}

let chihuahuaDog: Dog = Dog(breed: "Чихуаха", name: "Бобик")
let myCat: Cat = Cat(name: "Мурзик")

chihuahuaDog.makeSound()
myCat.makeSound()

// Задание 5 - Расширенный инициализатор

let labradorDog: Dog = Dog(breed: "Лабрадор", name: "Шарик")
let poodleDog: Dog = Dog(breed: "Пудель", name: "Пьер")

print("\(labradorDog.name) — \(labradorDog.breed)")
print("\(poodleDog.name) — \(poodleDog.breed)")

// Задание 6 - Магазин и товары 

class Product {
    
    let name: String
    let price: Double
    
    init(name: String, price: Double) {
        self.name = name
        self.price = price
    }
    
}

class Store {
    
    var products: [Product] = []
    
    func printCatalog() {
        for product in products {
            print("\(product.name): \(product.price) тенге.")
        }
    }
    
    func sell(productName: String) {
        if let index = products.firstIndex(where: { $0.name == productName }) {
            products.remove(at: index)
        }
    }
    
}

let tea: Product = Product(name: "Чай", price: 1600)
let chips: Product = Product(name: "Чипсы", price: 800)
let milk: Product = Product(name: "Молоко", price: 1100)

let store: Store = Store()

store.products.append(tea)
store.products.append(chips)
store.products.append(milk)

store.printCatalog()
store.sell(productName: "Чипсы")
store.printCatalog()
