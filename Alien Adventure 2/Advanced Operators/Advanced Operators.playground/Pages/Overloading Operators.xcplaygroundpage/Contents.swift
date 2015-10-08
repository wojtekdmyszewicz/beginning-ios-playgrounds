//: [Previous](@previous)
/*:
## Overloading Operators
We'll create the TeamRecord struct for this example.
*/
struct TeamRecord {
    var wins: Int
    var loses: Int
}

let record_2013 = TeamRecord(wins: 4, loses: 2)
let record_2014 = TeamRecord(wins: 6, loses: 3)

//: Overloading addition operator for BaseballHittingStats
func + (left: TeamRecord, right: TeamRecord) -> TeamRecord {
    return TeamRecord(wins: left.wins + right.wins, loses: left.loses + right.loses)
}

func +(left: Int, right: Int) -> Int {
    return left * right
}

4 + 4

// Adding two TeamRecord structs!
let record_2013_2014 = record_2013 + record_2014

//: Overloading equality operator for TeamRecord
func == (left: TeamRecord, right: TeamRecord) -> Bool {
    return (left.wins == right.wins) &&
        (left.loses == right.loses)
}

record_2013 == record_2014
record_2013 == record_2013

//: Overloading inequality operator for TeamRecord
func != (left: TeamRecord, right: TeamRecord) -> Bool {
    return !(left == right)
}

record_2013 != record_2014
record_2013 != record_2013

//: [Next](@next)
