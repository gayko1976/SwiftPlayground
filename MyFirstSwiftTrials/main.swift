//
//  main.swift
//  Taschenrechner
//
//  Created by Philipp Gayko on 22.12.19.
//  Copyright © 2019 Philipp Gayko. All rights reserved.
//
// https://docs.swift.org/swift-book/GuidedTour/GuidedTour.html

import Foundation

let message = "Hello World"
var welcomeMessage: String?

func defMessage() -> String {
    welcomeMessage = message
    return welcomeMessage!
}

print(defMessage())

let http404Error = (404, "Not Found")

print(http404Error.0)


var optionalString: String? = "Hello"
print(optionalString == nil)


let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
for (type, numbers) in interestingNumbers {
    print()
    print(type)
    var i = 0
    var term = ", "
    for number in numbers {
        if (i == numbers.count - 1) {
            term = ""
        }
        print(number, terminator:term)
        i += 1
    }
}

func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
print(greet(person: "Bob", day: "Tuesday"))


func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
print(greet("John", on: "Wednesday"))

let nums : [Int] = [5, 3, 100, 3, 9]
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}
let statistics = calculateStatistics(scores: nums)
print(statistics.sum)


func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
print(returnFifteen())


func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
print(hasAnyMatches(list: numbers, condition: lessThanTen))

let names : [String] = ["Hans","Josef","Anna"]
var sortedNames = names.sorted(by: { $0 < $1 } )
print(sortedNames)

let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]

let numbers2 = [16, 58, 510]

let strings = numbers2.map { (number) -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output
        print("out" + String(output))
        number /= 10
        print("num" + String(number))
    } while number > 0
    return output
}

print(strings)


