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

// MARK: Task 1 - Alphabetical
//A block that sorts alphabetically and not caring about case, with numbers coming before letters

// Sort from A to Z

var sortFromAtoZ = sorted(array)

// Sort from Z to A
// Closure Syntax
// { (parameters) -> return type in statements }

var sortFromZtoA = sorted(array, { (s1, s2) in return s1 > s2})
sortFromZtoA

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

// Sort array by length with closure
var sortByLengthOfString = sorted(array, {
    (s1: String, s2: String) -> Bool in
    return countElements(s1) > countElements(s2)})




