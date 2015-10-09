//: [Previous](@previous)

//: ### Exercise 1
//: 1a) Initialize the array, cuteAnimals. It should be of type CuddlyCreature. Type your answer below.
// Solution
var cuteAnimals = [CuddlyCreature]()

//: 1b) Initialize an array of 5 bools using array literal syntax.
// Solution
var boolArray = [true, false, false, true, true]

//: ### Exercise 2
//: Print out the number of spaniels in the array below.
var spaniels = ["American Cocker", "Cavalier King Charles", "English Springer", "French", "Irish Water","Papillon", "Picardy","Russian", "French", "Welsh Springer"]

// Solution
print(spaniels.count)

//: ### Exercise 3
//: Insert "indigo" into the array below so that its index is after "blue" and before "violet".
var colors = ["red", "orange", "yellow", "green", "blue", "violet"]
// Solution
colors.insert("indigo", atIndex: 5)

//: ### Exercise 4
//: Insert "English Cocker" into the spaniels array so that its index is before "English Springer".
// Solution
spaniels.insert("English Cocker", atIndex: 2)

//: ### Exercise 5
//: Append "Barcelona" to the end of the olympicHosts array.
var olympicHosts = ["London", "Beijing","Athens", "Sydney", "Atlanta"]
// Solution
olympicHosts.append("Barcelona")

//: ### Exercise 6
//: Remove "Lyla" and "Daniel" from the waitingList array and add them to the end  of the admitted array.
var admitted = ["Jennifer", "Vijay", "James"]
var waitingList = ["Lyla", "Daniel", "Isabel", "Eric"]
// Solution
var name = waitingList.removeAtIndex(0)
admitted.append(name)
var anotherName = waitingList.removeAtIndex(0)
admitted.append(anotherName)

//: ### Exercise 7
//: Using subscript syntax, print out the 2nd and 3rd names from the admitted array.
// Solution
print("second: \(admitted[1]), third: \(admitted[2])")

//: [Next](@next)
