//: [Previous](@previous)
/*:
## Beaker Example Property and Method
*/
//: ### Beaker Struct
struct Beaker {
    let volumeMillileters: Double
    
    // These are US ounces
    var volumeOunces: Double {
        get {
            return volumeMillileters * 0.033814
        }
    }
    
    func canCountainContents(otherBeaker: Beaker) -> Bool {
        return volumeMillileters >= otherBeaker.volumeMillileters
    }
}

let beaker1 = Beaker(volumeMillileters: 200)
let beaker2 = Beaker(volumeMillileters: 500)

beaker1.volumeOunces
beaker2.volumeOunces

beaker1.canCountainContents(beaker2)
beaker2.canCountainContents(beaker1)

//: [Next](@next)
