//
//  main.swift
//  p12m1|11
//
//  Created by Anton Tyurin on 08.07.2026.
//

import Foundation

// Задание 1 - Композиция через протоколы

protocol Plugin {
    func execute()
}

class App {
    
    var plugins: [Plugin] = []
    
    func addPlugin(_ plugin: Plugin) {
        plugins.append(plugin)
    }
    
    func runPlugins() {
        for plugin in plugins {
            plugin.execute()
        }
    }
    
}

class LoggerPlugin: Plugin {
    
    func execute() {
        print("Logger запущен")
    }
    
}

class AnalyticsPlugin: Plugin {
    
    func execute() {
        print("Analytics запущен")
    }
    
}

let app = App()

app.addPlugin(LoggerPlugin())
app.addPlugin(AnalyticsPlugin())
app.runPlugins()


// Задание 2 - Протокол для тестирования (Dependency Injection)

protocol NetworkServiceProtocol  {
    func fetchData() -> String
}

class RealNetworkService: NetworkServiceProtocol {
    
    func fetchData() -> String {
        "Данные с сервера"
    }
    
}

class MockNetworkService: NetworkServiceProtocol {
    
    func fetchData() -> String {
        "Тестовые данные"
    }
    
}

class ViewModel {

    let networkService: NetworkServiceProtocol

    init(networkService: NetworkServiceProtocol) {
        self.networkService = networkService
    }

    func loadData() {
        print(networkService.fetchData())
    }

}

let realViewModel = ViewModel(networkService: RealNetworkService())
realViewModel.loadData()

let mockViewModel = ViewModel(networkService: MockNetworkService())
mockViewModel.loadData()

// Задание 3 - Наследование протоколов 

protocol Movable {
    func moveForward()
    func moveBackward()
}

protocol Flyable: Movable {
    func fly()
}

class Bird: Flyable {

    func moveForward() {
        print("Птица идет вперед")
    }

    func moveBackward() {
        print("Птица идет назад")
    }

    func fly() {
        print("Птица летит")
    }
    
}

let bird = Bird()

bird.moveForward()
bird.moveBackward()
bird.fly()
