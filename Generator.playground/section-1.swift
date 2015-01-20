// Playground - noun: a place where people can play

import UIKit
import Foundation

struct ArgumentList {
    var arguments = [String]()
    
    init(argv: UnsafePointer<String>, count: CInt) {
        for i in 1...count {
            let index = Int(i);
            let arg = String.fromCString(argv[index])
            arguments.append(arg!)
        }
    }
}

var argumentList =

// Slice function

var array: [String] = ["foo", "bar", "baz"]
let slice: Slice<String> = array[1...2]
println(slice) // prints ["bar", "baz"]

array[1] = "bat"
println(slice) // prints ["bat", "baz"]

// simple generator example

var gen = [1,2,3].generate()
while let x = gen.next() {
    println(x)
}
println("Sequence and mapping")
for x in map([1,2,3], {i in i*2}) {
    println(x)
}

// generate sequence lazily
println("Sequence produced lazily")
var seq = map([1,2,3], { (i: Int) -> Int in
    println("processing " + String(i))
    return i*2
})
var gen2 = seq.generate()
println(gen.next())


struct ArgumentListGenerator: GeneratorType {
    var items: Slice<String>
    mutating func next() -> String? {
        if items.isEmpty { return .None }
        let element = items[0]
        items = items[1...items.count]
        return element
    }
    
    func generate() -> GeneratorOf<String> {
        var i = 0
        return GeneratorOf<String> {
            if (i > self.items.count) {
                return .None
            } else {
                return self.items[i++]
            }
        }
    }
}
//    func generate2() -> IndexingGenerator<String[]> {
//        return items.generate2()
//    }
//}


//struct CollectionGenerator<T>: GeneratorType {
//    var items: Slice<T>
//    
//    mutating func next() -> T? {
//        if items.isEmpty { return .None }
//        let item = items[0]
//        items = items[1...items.count]
//        return item
//    }
//    
//    
//}

//extension ArgumentList: SequenceType {
//    func generate() -> CollectionGenerator<String> {
//        return CollectionGenerator(items: arguments[0...arguments.endIndex])
//    }
//}


