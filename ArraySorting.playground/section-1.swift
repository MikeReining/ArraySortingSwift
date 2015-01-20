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



