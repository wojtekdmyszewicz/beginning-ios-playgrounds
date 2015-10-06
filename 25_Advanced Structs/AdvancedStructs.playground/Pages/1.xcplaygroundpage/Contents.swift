struct SuitedCard {
    
    enum Suit {
        case Hearts
        case Spades
        case Diamonds
        case Clubs
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
    let isFaceDown:Bool
    
    
    init(suit:Suit, value:Value) {
        self.suit = suit
        self.value = value
        self.isFaceDown = false
    }
    
    init(suit:Suit, value:Value, isFaceDown:Bool) {
        self.suit = suit
        self.value = value
        self.isFaceDown = isFaceDown
    }
    
    var suitDisplay:String {
        switch self.suit {
        case .Hearts:
            return "♥"
        case .Spades:
            return "♠"
        case .Diamonds:
            return "♦"
        case .Clubs:
            return "♣"
        }
    }
    
    func isBlackjack(otherCard:SuitedCard) -> Bool {
        switch value {
        case .King, .Queen, .Jack, .Ten:
            return otherCard.value == .Ace
        default:
            break
        }
        
        switch otherCard.value {
        case .King, .Queen, .Jack, .Ten:
            return value == .Ace
        default:
            break
        }
        
        return false
    }
}
let s = SuitedCard(suit: .Hearts, value: .Ace)
s.suitDisplay

let t = SuitedCard(suit: .Spades, value: .Ten)
let u = SuitedCard(suit: .Spades, value: .Ten, isFaceDown:true)

s.isBlackjack(t)


let ten = SuitedCard(suit: .Spades, value: .Ten)
ten.isFaceDown
let upsideDown = SuitedCard(suit: .Spades, value: .Ten, isFaceDown:true)
upsideDown.isFaceDown
