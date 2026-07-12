//
//  main.swift
//  p12m1|6
//
//  Created by Anton Tyurin on 04.07.2026.
//

import Foundation

// Задание 1 - Направления движения (без rawValue) 

enum Direction {
    case north
    case south
    case east
    case west
}

func move(direction: Direction) {
    switch direction {
    case .north:
        print("Go up")
    case .south:
        print("Go down")
    case .east:
        print("Go right")
    case .west:
        print("Go left")
    }
}

move(direction: .north)
move(direction: .south)
move(direction: .east)
move(direction: .west)

// Задание 2 - Игровые уровни 

enum GameLevel: String {
    case easy = "Easy"
    case medium = "Medium"
    case hard = "Hard"
}

func printGameLevel(level: String) {
    if let gameLevel = GameLevel(rawValue: level) {
        print("\(gameLevel.rawValue) level")
    } else {
        print("Unknown level")
    }
}

printGameLevel(level: "Easy")
printGameLevel(level: "Medium")
printGameLevel(level: "Hard")
printGameLevel(level: "Unknown")

// Задание 3 - Платёжная система

enum Payment {
    case cash(Double)
    case card(number: String, amount: Double)
    case crypto(wallet: String, amount: Double)
}

func process(payment: Payment) {
    switch payment {
    case .cash(let amount):
        print("Processing cash payment of \(amount)")
    case .card(number: let number, amount: let amount):
        print("Processing card payment for \(amount) with card number \(number)")
    case .crypto(wallet: let wallet, amount: let amount):
        print("Processing crypto payment for \(amount) with wallet \(wallet)")
    }
}

process(payment: .cash(200.50))
process(payment: .card(number: "3243 4340 0904 2321", amount: 2_000_000.99))
process(payment: .crypto(wallet: "0xabc123xyz456", amount: 150.75))

// Задание 4 - События в приложении 

enum AppEvent {
    case login(user: String)
    case logout(user: String) 
    case error(message: String)
    case purchase(user: String, amount: Double)
}

func logEvent(_ event: AppEvent) {
    switch event {
    case .login(user: let user):
        print("User \(user) logged in")
    case .logout(user: let user):
        print("User \(user) logged out")
    case .error(message: let message):
        print("Error: \(message)")
    case .purchase(user: _, amount: let amount) where amount > 1000:
        print("Big spender!")
    case .purchase(user: let user, amount: let amount):
        print("User \(user) made a purchase for \(amount)")
    }
}

logEvent(.login(user: "Bob"))
logEvent(.logout(user: "Bob"))
logEvent(.error(message: "Network error"))
logEvent(.purchase(user: "Vasya", amount: 20000.55))
logEvent(.purchase(user: "Vasya", amount: 150.75))

// Задание 5 - Уведомления

enum Notification {
    case message(user: String, text: String) 
    case friendRequest(user: String) 
    case system(message: String)
}

func handle(notification: Notification) {
    switch notification {
    case .message(user: let user, text: let text):
        print("\(user): \(text)")
    case .friendRequest(user: let user):
        print("Friend request from \(user)")
    case .system(message: let message):
        print("System message: \(message)")
    }
}

handle(notification: .message(user: "Bob", text: "Hi, how are you?"))
handle(notification: .friendRequest(user: "Evlampiya"))
handle(notification: .system(message: "Check your email for the latest updates"))

// Задание 6 - Результат загрузки файла 

enum DownloadResult {
    case success(filePath: String, size: Int) 
    case failure(error: String)
}

func downloadFile(from result: DownloadResult) {
    switch result {
    case .success(filePath: let filePath, size: let size):
        print("File downloaded successfully. Path: \(filePath), Size: \(size) bytes")
    case .failure(error: let error):
        print("Failed to download file: \(error)")
    }
}

downloadFile(from: .success(filePath: "/path/to/file.txt", size: 1024))
downloadFile(from: .failure(error: "Invalid URL"))


