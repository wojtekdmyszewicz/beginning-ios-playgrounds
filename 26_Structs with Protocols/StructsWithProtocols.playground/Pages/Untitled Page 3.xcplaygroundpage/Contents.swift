protocol PlayingCard {
    var isFaceDown:Bool { get set }
    var shortName:String { get }
}

protocol GoldPlatedPlayingCard: PlayingCard {
    var karats:Int { get }
}

struct PreciousCard {
    let karats:Int
    
    enum Suit {
        case RoseGold
        case SpaceGrey
        case Champagne
        case Silver
    }
    
    enum Value {
        case Two
        case Three
        case Four
        case Five
        case Six
        case Seven
        case Eight
        case Nine
        case Ten
        case Jack
        case Queen
        case King
        case Ace
    }
    
    let suit:Suit
    let value:Value
    var isFaceDown:Bool
}

let myPrecious = PreciousCard(karats: 24, suit: .RoseGold, value: .Jack, isFaceDown: false)