import Foundation

for c in "Oh hi, doggie 🐕".characters {
    print(c)
}


1...10

for i in 1...10 {
    print(i)
}

var i=1
while (i < 1000) {
    i += i
}
print(i)

print((1...10))

for i in 0..<0 {
    print(i)
}



for i = 1; i < 11; i += 1 {
    print(i)
}

for _ in 1...3 {
    print("Three cheers for Swift!")
}

let word = "Mississippi"
for c in word.characters {
    print(c)
}


var f = 1

var dieRoll1:Int = 2
var dieRoll2:Int = 2
while (!(dieRoll1 == 1 && dieRoll2 == 1)) {
    dieRoll1 = Int(arc4random() % 6) + 1
    dieRoll2 = Int(arc4random() % 6) + 1
    print("\(dieRoll1), \(dieRoll2)")
}

while (true) {
    var dieRoll1 = Int(arc4random() % 6) + 1
    var dieRoll2 = Int(arc4random() % 6) + 1
    print("\(dieRoll1), \(dieRoll2)")
    if dieRoll1 == 1 && dieRoll2 == 1 {
        break
    }
}


for i in 1...8 {
    for j in 1...8 {
        if j % 2 == i % 2 {
            print("⬛", terminator: "")
        } else {
            print("◻️", terminator: "")
        }
    }
    print("")
}


//for i in 1...8 {
//    for j in 1...8 {
//        if j % 4 == 0 && i % 4 == 0 {
//            print("🆒", terminator: "")
//        } else if j % 2 == i % 2 {
//            print("⬛", terminator: "")
//        } else {
//            print("◻️", terminator: "")
//        }
//    }
//    print("")
//}




