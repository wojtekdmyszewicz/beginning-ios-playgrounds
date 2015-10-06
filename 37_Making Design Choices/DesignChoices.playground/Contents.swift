var isAboutToRetire = false
var isCriticallyAcclaimed = false
var hasBestSellingRecord = true
var wonAGrammyBefore = false

var percentageOddsOfGrammyWin = 0
if isAboutToRetire && (isCriticallyAcclaimed || hasBestSellingRecord) && hasBestSellingRecord {
    percentageOddsOfGrammyWin = 80
} else if isAboutToRetire && !hasBestSellingRecord {
    percentageOddsOfGrammyWin = 70
} else if !isAboutToRetire && isCriticallyAcclaimed && hasBestSellingRecord {
    percentageOddsOfGrammyWin = 50
} else if !isAboutToRetire && !wonAGrammyBefore {
    percentageOddsOfGrammyWin = 40
} else if isAboutToRetire || wonAGrammyBefore || hasBestSellingRecord || isCriticallyAcclaimed {
    percentageOddsOfGrammyWin = 35
} else {
    percentageOddsOfGrammyWin = 1
}

var isLoggedIn = false
var isPreferredMember = false
var isReturnCustomer = false
var wasReferred = false
var name = "Fred Skinner"

if isLoggedIn {
    let isSpecialCustomer = isPreferredMember || isReturnCustomer
    if isSpecialCustomer {
        print("Very very happy to see you again \(name)")
    } else {
        print("Hello there \(name)")
    }
} else if wasReferred {
    print("Oh hi there \(name)")
} else  {
    print("Hi")
}


var dog = "corgi"
var holdingOwnLeashInMouth = true
var points = 0

if dog == "terrier" {
    print("I saw a terrier! +1")
    points += 1
    if holdingOwnLeashInMouth {
        print("Ronin bonus! +4")
        points += 4
    }
} else if dog == "kavkazskaya ovcharka" {
    print("I saw a kavkazskaya ovcharka! +1")
    points += 1
    if holdingOwnLeashInMouth {
        print("Ronin bonus! +4")
        points += 4
    }
} else if dog == "labrador" {
    print("I saw a labrador! +1")
    points += 1
    if holdingOwnLeashInMouth {
        print("Ronin bonus! +4")
        points += 4
    }
} else if dog == "shiba inu" {
    print("I saw a shiba inu! +1")
    points += 1
    if holdingOwnLeashInMouth {
        print("Ronin bonus! +4")
        points += 4
    }
} else if dog == "corgi" {
    print("I saw a corgi! +1")
    points += 1
    if holdingOwnLeashInMouth {
        print("Ronin bonus! +4")
        points += 4
    }
} else if dog == "bear" {
    print("Print that wasn't a dog at all! Nice try.")
}


class Terse {
    let n: String
    var cfs: Bool // swim
    var cfb: Bool // bike
    var cfr: Bool // run
    
    init(n: String, cfs: Bool, cfb: Bool, cfr: Bool) {
        self.n = n
        self.cfs = cfs
        self.cfb = cfb
        self.cfr = cfr
    }
}

class Trainee {
    let name: String
    var canFinishSwim: Bool
    var canFinishBike: Bool
    var canFinishRun: Bool
    
    init(name: String, canFinishSwim: Bool, canFinishBike: Bool, canFinishRun: Bool) {
        self.name = name
        self.canFinishSwim = canFinishSwim
        self.canFinishBike = canFinishBike
        self.canFinishRun = canFinishRun
    }
}


