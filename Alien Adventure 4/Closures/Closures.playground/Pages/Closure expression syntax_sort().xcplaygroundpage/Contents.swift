//: [Previous](@previous)

//: ## Closure expression syntax: sort()

var bids = [48.1, 75.4, 63.7, 52.4, 68.2]
var orderedBids = bids.sort( {(bid1: Double, bid2:Double) -> Bool in
    return  bid2 > bid1
})

print(orderedBids)
//: Closures typically take the form:
//:
//: { (parameters) -> return type **in**
//:
//:     statements to execute
//:
//:}

var birthYears = [2004, 2011, 2007, 2005, 2002]
var youngestToOldest = birthYears.sort({ (year1: Int, year2: Int) -> Bool in
    return year1 > year2
})

youngestToOldest

//: [Next](@next)
