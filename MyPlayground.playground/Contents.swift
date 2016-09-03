//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
print(str)
str = "myWorld"



/*
 --This line will have error
 --let value cannot be change, compiler will suggest you to change the let to var
 
 companyName = "Microsoft"
 */
let companyName = "Google"
print(companyName)



//Can use emoji (Command + Control + Space)
let 🐮 = "cow"
print(🐮)



//Get total Characters of the String
for character in "Tommy".characters{
    print(character)
}

for character in "Chrissy".characters{
    print(character)
}



// Using \()   to get the value of variable in String
let name = "Tommy"
print("My name is \(name)")


var abc = "My Name is: \("a") \("bc")"
print(abc)


//Array
var names = ["Tommy", "King", 2]
names.append(1)
print(names)


