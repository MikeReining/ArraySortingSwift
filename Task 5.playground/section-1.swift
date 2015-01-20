// Playground - noun: a place where people can play

import UIKit

// Sort Shapes by Area


class Rectangle {
    var width: Int
    var length: Int
    var area: Int
    init(width: Int, length: Int) {
        self.width = width
        self.length = length
        self.area = length * width
    }
}

var rectangle1 = Rectangle(width: 5, length: 5)
var rectangle2 = Rectangle(width: 10, length: 100)
var rectangle3 = Rectangle(width: 1, length: 1)

var array = [rectangle1, rectangle2, rectangle3]

// Sort Array of Shapes by size of shape

func sortByArea(r1: Rectangle, r2: Rectangle) -> Bool {
    return r1.area > r2.area
}

var sortArrayByArea = sorted(array, {
    (r1: Rectangle, r2: Rectangle) -> Bool in
    return r1.area > r2.area
})

for rectangle in sortArrayByArea {
    println("\(rectangle.area)")
}

