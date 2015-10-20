import Foundation

// Checkerboard example con't

for i in 1...8 {
    for j in 1...8 {
        if j % 2 == 0 {
            print("⬛")
        } else {
            print("◻️")
        }
    }
}

print("Trying to use a terminator parameter...")

for i in 1...8 {
    for j in 1...8 {
        if j % 2 == 0 {
            print("⬛", terminator: "")
        } else {
            print("◻️", terminator: "")
        }
    }
}
