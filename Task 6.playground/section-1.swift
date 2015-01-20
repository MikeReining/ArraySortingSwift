// Playground - noun: a place where people can play

import UIKit

let array = [
    "eeeeeAAbfdf",
    "Everything",
    "news to me",
    "timepiece",
    "egg",
    "eggs",
    "paper",
    "e",
    "facebook",
    "painting",
    "231 thurlow st",
    "99 bottles"
]

// MARK: Task 6 - Filter out e words

var someString = "aaaeee"

// Step 1 - see if item contains "e"

contains(someString, "e")

// Step 2 - if item does NOT contain e, then add to new array

func arrayWithoutE(initialArray: [String]) -> [String] {
    var newArray = [String]()
    for string in initialArray {
        if contains(string, "e") {
            // do nothing if it contains e
        } else {
            newArray.append(string)
        }
    }
    return newArray
}

var finalArray = arrayWithoutE(array)

for word in finalArray {
    println("\(word)")
}

