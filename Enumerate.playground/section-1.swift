// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//Return a lazy SequenceType containing pairs (n, x), where ns are consecutive Ints starting at zero, and xs are the elements of base:

for (n, c) in enumerate("Swift") { println("\(n): '\(c)'" )}

//0: 'S'
//1: 'w'
//2: 'i'
//3: 'f'
//4: 't'


str.startIndex
str.endIndex
str.isEmpty

// Example of using "Slice"

var array = ["foo", "bar", "baz"]
let slice: Slice<String> = array[1...2]
println(slice) // prints ["bar", "baz"]
var newString = "bat"

array[1] = "zip"
println(slice) // prints ["bat", "baz"]

