protocol PlayingCard {
    var isFaceDown:Bool { get set }
    var shortName:String { get }
}

struct Joker: PlayingCard {
    enum Color {
        case Red
        case Black
    }
    let color:Color
    var isFaceDown:Bool
    var shortName:String {
        if isFaceDown {
            return "???"
        }
        
        switch color {
        case .Red:
            return "R 🃏"
        case .Black:
            return "B 🃏"
        }
    }
}

struct SuitedCard: PlayingCard {
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
    var isFaceDown:Bool
    
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
    
    var valueDisplay:String {
        switch self.value {
        case .Two:
            return "2"
        case .Three:
            return "3"
        case .Four:
            return "4"
        case .Five:
            return "5"
        case .Six:
            return "6"
        case .Seven:
            return "7"
        case .Eight:
            return "8"
        case .Nine:
            return "9"
        case .Ten:
            return "10"
        case .Jack:
            return "J"
        case .Queen:
            return "Q"
        case .King:
            return "K"
        case .Ace:
            return "A"
        }
    }
    
    var shortName:String {
        if isFaceDown {
            return "???"
        }
        
        if valueDisplay.characters.count == 1 {
            // Add a space so the width is always three.
            return "\(suitDisplay) \(valueDisplay)"
        }
        
        return "\(suitDisplay)\(valueDisplay)"
    }
}

let suits:[SuitedCard.Suit] = [.Hearts, .Diamonds, .Clubs, .Spades]
let values:[SuitedCard.Value] = [.Two, .Three, .Four, .Five, .Six, .Seven, .Eight, .Nine, .Ten, .Jack, .Queen, .King, .Ace]

struct Deck {
    var cards:[PlayingCard] = []
    
    init() {
        for suit in suits {
            for value in values {
                cards.append(SuitedCard(suit: suit, value: value, isFaceDown: true))
            }
        }
        
        cards.append(Joker(color: .Red, isFaceDown: true))
        cards.append(Joker(color: .Black, isFaceDown: true))
        
        shuffle()
    }
    
    func shuffle() {
        // TODO: implement shuffle
    }
}

