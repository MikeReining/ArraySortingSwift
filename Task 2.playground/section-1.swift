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

//MARK: Task 2 - Sort by lenght of string
// Sort by length function

func sortByLenght(s1: String, s2: String) -> Bool {
    
    return countElements(s1) > countElements(s2)
}

// Sort by length closure

var sortByLengthClosure = {
    (s1: String, s2: String) -> Bool in
    return countElements(s1) > countElements(s2)
}

let sortArrayByLength = sorted(array, {
    (s1: String, s2: String) -> Bool in
    return countElements(s1) > countElements(s2)
    }
)

for string in sortArrayByLength {
    println("\(string)")
}