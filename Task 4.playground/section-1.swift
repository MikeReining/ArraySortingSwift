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

//MARK: Task 4 - Occurances of ee with most ee's first

// Calculate occurances of e
func eOccurances (someString:String) -> Int {
  var someCounter:Int = 0
  for char in someString {
    if char == "e" { someCounter += 1 }
  }
  return someCounter
}

// Sort by Occurances of e
func sortByeOccurances(s1: String, s2: String) -> Bool {
    return eOccurances(s1) > eOccurances(s2)
}

var sortByOccurancesClosure = {
    (s1: String, s2: String) -> Bool in
    return eOccurances(s1) > eOccurances(s2)
}

let sortArrayByOccurances = sorted(array, sortByOccurancesClosure)

for string in sortArrayByOccurances {
    println("\(string)")
}
