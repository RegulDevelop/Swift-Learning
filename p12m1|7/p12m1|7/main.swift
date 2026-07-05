//
//  main.swift
//  p12m1|7
//
//  Created by Anton Tyurin on 05.07.2026.
//

import Foundation

// Задание 1- Точка на плоскости

struct Point {
    
    let x: Int
    let y: Int
    
    func coorinate() -> String {
        "(\(x), \(y))"
    }
    
}

let pointCoordinate = Point(x: 5, y: 7)

print("Координаты точки: \(pointCoordinate.coorinate())" )

// Задание 2- Прямоугольник и площадь

struct Rectangle {
    
    let width: Int
    let height: Int
    
    func area() -> Int {
        width * height
    }
    
}

let rectangle = Rectangle(width: 3, height: 4)

print("Площадь прямоугольника: \(rectangle.area())" )

// Задание 3- Сравнение

struct Student {
    
    let name: String
    let grade: Int
    
    func isBetter(than: Student) -> Bool {
        self.grade > than.grade
    }
    
}

let studentBoris = Student(name: "Boris", grade: 10)
let studentVictor = Student(name: "Victor", grade: 5)

print(studentBoris.isBetter(than: studentVictor))
print(studentVictor.isBetter(than: studentBoris))

// Задание 4- Optional в структуре

struct User {
    
    let name: String
    let email: String?
    
    func printEmail() {
        if let email {
            print("Email: \(email)")
        } else {
            print("Email не указан")
        }
    }

}

let userAnton = User(name: "Anton", email: nil)
let userOleg = User(name: "Oleg", email: "oleg@example.com")

userAnton.printEmail()
userOleg.printEmail()

