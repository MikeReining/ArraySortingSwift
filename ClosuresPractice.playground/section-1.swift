// Playground - noun: a place where people can play

import Cocoa

// Simple closure, without any arguments and without a return value

var clos1 = {
    () -> Void in
    
    println("Simple Closure")
}

clos1()

// closure with arguments but no return value

var print1 =
{
    (str:String) -> Void  in
    
    println(str)
    
}

print1("Ravi")

// closure with arguments and return value

var max = {
    (num1:Int,num2:Int) ->  Int in
    
    return num1 > num2 ? num1 : num2
}

println("Max of 10 and 2 is: \(max(10,2))")

// passing closures as function arguments


func mySort(inout numbers:[Int],compare:((Int,Int)->Bool))
{
    //Write your login  to sort numbers using comparator method
    var tmp:Int
    var n = numbers.count
    
    for(var i=0;i<n;i++)
    {
        for(var j=0;j<n-i-1;j++)
        {
            if(numbers[j] > numbers[j+1])
            {
                tmp=numbers[j];
                numbers[j]=numbers[j+1];
                numbers[j+1]=tmp;
            }
        }
    }
}

var numbers = [10,1,20,123,50]

mySort(&numbers,{
    (num1:Int,num2:Int) -> Bool in
    
    return num1 > num2
    
})


let namesArray = ["Grete Hermann", "Grace Hopper", "Ida Rhodes", "Jean Sammet", "Henrietta Zebra ", "Alan Turing"]

func sort_names(names : [String]) -> [String]
    {
        var orderedArray = sorted(names,
            {$0.componentsSeparatedByString(" ")[1] < $1.componentsSeparatedByString(" ")[1]
        })
        
        return orderedArray
    }

var sortedNamesArray = sort_names(namesArray)

for name in sortedNamesArray {
    println(name)
}