//
//  calculator.swift
//  Lab1
//
//  Created by Tomiris Sultanbay on 04.02.2024.
//

import Foundation
func add(_ a: Double, _ b: Double) -> Double {
    return a + b
}
func subtract(_ a: Double, _ b: Double) -> Double {
    return a - b
}
func multiply(_ a: Double, _ b: Double) -> Double {
    return a * b
}
func divide(_ a: Double, _ b: Double) throws -> Double {
    guard b != 0 else {
        throw CalculatorError.divideByZero
    }
    return a / b
}
func power(_ a: Double, _ b: Double) -> Double {
    return pow(a, b)
}
enum CalculatorError: Error {
    case divideByZero
}
func getInputNumber() -> Double {
    print("Введите число:")
    while true {
        if let input = readLine(), let number = Double(input) {
            return number
        } else {
            print("Некорректный ввод. Пожалуйста, введите число.")
        }
    }
}
func getOperator() -> String {
    print("Ввести оператор (+, -, *, /, ^):")
    while true {
        if let `operator` = readLine(), ["+", "-", "*", "/", "^"].contains(`operator`) {
            return `operator`
        } else {
            print("Некорректный ввод. Пожалуйста, введите один из операторов: +, -, *, /, ^.")
        }
    }
}
let number1 = getInputNumber()
let operatorSymbol = getOperator()
let number2 = getInputNumber()
do {
    var result: Double
    switch operatorSymbol {
    case "+":
        result = add(number1, number2)
    case "-":
        result = subtract(number1, number2)
    case "*":
        result = multiply(number1, number2)
    case "/":
        result = try divide(number1, number2)
    case "^":
        result = power(number1, number2)
    default:
        fatalError("Неожиданный оператор")
    }
    
    print("Результат: \(result)")
} catch CalculatorError.divideByZero {
    print("Ошибка: деление на ноль.")
} catch {
    print("Произошла неизвестная ошибка.")
}
