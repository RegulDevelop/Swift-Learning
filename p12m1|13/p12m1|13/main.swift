//
//  main.swift
//  p12m1|13
//
//  Created by Anton Tyurin on 09.07.2026.
//

import Foundation

// Задание 1 - Простые ссылки

class Person {
    
    var name: String
    var pet: Dog?
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("Person deinit")
    }
    
}

var personOne: Person? = Person(name: "Игорь")
var personTwo = personOne
var personThree = personTwo

personOne = nil
personTwo = nil
personThree = nil

// Задание 2 - Сильные и слабые ссылки

class Dog {
    
    weak var owner: Person?
    
    deinit {
        print("Dog deinit")
    }
    
}

var person: Person? = Person(name: "Григорий")
var dog: Dog? = Dog()

person?.pet = dog
dog?.owner = person

person = nil
dog = nil

// Задание 3 - Closures и утечки

class Downloader {
    
    var onComplete: (() -> Void)?
    
    func start() {
        onComplete = { [weak self] in
            guard let self else { return }
            print(self)
        }
    }
    
    deinit {
        print("Downloader deinit")
    }
    
}

var downloader: Downloader? = Downloader()

downloader?.start()

downloader = nil






