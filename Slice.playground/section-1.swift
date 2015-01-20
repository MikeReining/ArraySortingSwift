// Playground - noun: a place where people can play

import Cocoa

// Slice function

var array: [String] = ["foo", "bar", "baz"]
let slice: Slice<String> = array[1...2]
println(slice) // prints ["bar", "baz"]

array[1] = "bat"
println(slice) // prints ["bat", "baz"]