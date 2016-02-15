//: Boolean Expressions

import UIKit

// Introduction to Boolean Expressions
//var age = 5
var age = 29
let applySeniorDiscount = age >= 65

var timeForKindergarten = age == 5
var canVote = age >= 18

1.0 == 1

struct Rectangle {
    let height : Int
    let width : Int
}

let rect1 = Rectangle(height: 7, width: 5)
let rect2 = Rectangle(height: 5, width: 7)

//rect1 == rect2

let arrayOfInts = [10,8,9]
let biggerArrayOfInts = [6,5,4,3]

//let arraySizeBool = arrayOfInts.count

let arraySizeBool = arrayOfInts.count < biggerArrayOfInts.count

let anotherAlphabeticalBool = "xerox" > "xylophone"



//: [Next](@next)
