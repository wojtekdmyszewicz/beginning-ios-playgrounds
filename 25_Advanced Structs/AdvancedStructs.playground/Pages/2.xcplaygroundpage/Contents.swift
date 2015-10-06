struct Beaker {
    let volumeMillileters:Double
    
    // These are US ounces
    var volumeOunces:Double {
        get {
            return volumeMillileters * 0.033814
        }
    }
    
    func canCountainContents(otherBeaker:Beaker) -> Bool {
        return volumeMillileters >= otherBeaker.volumeMillileters
    }
}