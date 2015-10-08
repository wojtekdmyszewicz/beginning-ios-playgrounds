protocol PlayingCard {
    var isFaceDown:Bool { get set }
    var shortName:String { get }
}

struct Joker: PlayingCard, Equatable {
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
func ==(lhs: Joker, rhs: Joker) -> Bool {
    return true
}


var redJoker = Joker(color: .Red, isFaceDown: false)
var blackJoker = Joker(color: .Black, isFaceDown: false)

blackJoker == redJoker
blackJoker != redJoker