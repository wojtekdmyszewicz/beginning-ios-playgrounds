//: [Previous](@previous)
/*:
## Beaker Example Access Modifiers and Exercises
*/
//: ### Beaker Struct
struct Beaker {
    
    let volumeMillileters: Double
    
    // The contents are pairs of (description, millileters). This is made private so that only the Beaker can modify the contents directly.
    private var contents: [String:Double] = [:]
    
    init(volumeMillileters: Double) {
        self.volumeMillileters = volumeMillileters
    }
    
    // These are US ounces
    var volumeOunces: Double {
        get {
            return volumeMillileters * 0.033814
        }
    }
    
    var contentsVolume: Double {
        return contents.values.reduce(0, combine: +)
    }
    
    var availableMillileters: Double {
        return volumeMillileters - contentsVolume
    }
    
    // Adds contents to the beaker without overflowing the beaker's volume.
    mutating func addContents(name: String, amount: Double) {
        let amountWithoutOverflowing = min(availableMillileters, amount)
        if let existingAmount = contents[name] {
            contents[name] = existingAmount + amountWithoutOverflowing
        } else {
            contents[name] = amountWithoutOverflowing
        }
    }
    
    func listContents() -> String {
        return contents.description
    }
    
    // TODO: re-implement this, keeping in mind contents
    func canCountainContents(otherBeaker:Beaker) -> Bool {
        return false
    }
}

var b = Beaker(volumeMillileters: 100)
b.addContents("baking soda", amount: 40)
b.addContents("vinegar", amount: 140)
b.listContents()

