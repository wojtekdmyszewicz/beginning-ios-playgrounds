//: Boolean Expressions

import UIKit

var age = 15
var quinceañeraTime = age == 15


var canVote = age >= 18

var description = "the better looking Parkes brother"
var jarrod = description


var exampleBool = jarrod == "the better looking Parkes brother"

if 1.0 == 1 {
    print("decimal agnostic")
}

struct Rectangle: Equatable {
    var height = 2
    var width = 2
}

func == (lhs: Rectangle, rhs: Rectangle) -> Bool {
    return lhs.height == rhs.height && lhs.width == rhs.width
}

let rect1 = Rectangle(height: 5, width: 7)
let rect2 = Rectangle(height: 7, width: 5)

var boolExample = rect1 == rect2

var allowance = 10.50
var movieTicketPrice = 8.50

var someBool = allowance >= movieTicketPrice


let apples = "apples"
let oranges = "oranges"
let alphabeticalBool = apples < oranges

let arrayOfInts = [10,8,9]
let biggerArrayOfInts = [6,5,4,3]

let boolSize = biggerArrayOfInts.count > arrayOfInts.count

age = 29
let applySeniorDiscount = age > 65

let boolOhDool = "xerox" < "xylophone"

let technicalSkills: Bool = true
let communicationSkills: Bool = true

let hire = technicalSkills && communicationSkills

let audienceRating = 85
let criticsRating = 75
let recommendedByAFriend = true

let goWatchMovie = audienceRating > 90 && criticsRating > 80

 audienceRating <= 90 && criticsRating <= 80

 audienceRating <= 90 || criticsRating <= 80

 audienceRating > 90 || criticsRating > 80








var finishedHomework = false
var schoolTomorrow = true
var notAllowedToPlayVideoGames = !finishedHomework && schoolTomorrow


let win = false
let lose = !win

let finished = true

let incomplete = !finished

var hungry = false
var thereIsPie = true
var shouldEat = hungry || thereIsPie

//: let compoundBool = <first boolean expression> | | <second boolean expression>

//: <variable1> == <variable2>
