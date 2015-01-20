// Playground - noun: a place where people can play

import Cocoa

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

// Sorting function - backwards

func backwards(s1: String, s2: String) -> Bool {
    return s1 > s2
}
var reversed = sorted(array, backwards)

// Closure Syntax
// { (parameters) -> return type in statements }

var reversedWithClosure = sorted(array, { (s1: String, s2: String) -> Bool in return s1 > s2 })

reversedWithClosure

// Inferring type from context

var reversedWithInferredType = sorted(array, { s1 , s2 in return s1 > s2})

reversedWithInferredType

// Shorthand argument names and implicit return

var reversedWithImplicitReturn = sorted(array, { $0 as String > $1 })

reversedWithImplicitReturn

// Super short

var superShortZtoA = sorted(array, >)
var superShortAtoZ = sorted(array, { s1 , s2 in return s1 < s2 })
superShortAtoZ

// Trailing closures for readability

var sortAtoZWithTrailingClosure = sorted(array) { (s1: String, s2: String) -> Bool in return s1 > s2 }







