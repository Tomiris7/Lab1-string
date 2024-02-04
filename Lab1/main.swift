//
//  main.swift
//  Lab1
//
//  Created by Tomiris Sultanbay on 04.02.2024.
//

import Foundation
print("Введите первую строку: ")
let firstString = readLine() ?? ""
print("Введите вторую строку: ")
let secondString = readLine() ?? ""
let add = firstString + secondString
print("Результат объединения: \(add)\n")

print("Введите текст для переворота: ")
if let textString = readLine() {
    let reversedString = String(textString.reversed())
    print("Результат переворота: \(reversedString)\n")
}

print("Введите текст для подсчета символов: ")
if let textString = readLine() {
    let characterCount = textString.filter { !$0.isWhitespace }.count
    print("Количество символов (без пробелов): \(characterCount)\n")
}

print("Введите текст:")
if let mainString = readLine() {
    print("Введите подстроку для поиска:")
    if let substring = readLine() {
        if let range = mainString.range(of: substring) {
            let startIndex = mainString.distance(from: mainString.startIndex, to: range.lowerBound)
            print("Первое вхождение подстроки \"\(substring)\" на позиции: \(startIndex + 1)\n")
        } else {
            print("Подстрока не найдена в строке\n")
        }
    }
}



