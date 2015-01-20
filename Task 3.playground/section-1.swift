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
    "99 bottles",
    "aaazzz",
    "zzzaaa"
]

//MARK: Task 3 - Sort Alphabetical by last character

let myString = "Hello, I must be going"

last(myString)

// Sort by last char function

func sortByLastChar(s1: String, s2: String) -> Bool {
    return last(s1) > last(s2)
}

// Sort by last char closure

var sortByLastCharClosure = {
    (s1: String, s2: String) -> Bool in
    return last(s1) > last(s2)
}

let sortArrayByLastChar = sorted(array, {
    (s1: String, s2: String) -> Bool in
    return last(s1) > last(s2)
})

for string in sortArrayByLastChar {
    println("\(string)")
}


