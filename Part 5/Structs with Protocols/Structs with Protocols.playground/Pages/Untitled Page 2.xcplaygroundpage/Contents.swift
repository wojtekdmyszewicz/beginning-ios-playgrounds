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

var redJoker = Joker(color: .Red, isFaceDown: false)
redJoker.shortName
redJoker.isFaceDown = true
redJoker.shortName

