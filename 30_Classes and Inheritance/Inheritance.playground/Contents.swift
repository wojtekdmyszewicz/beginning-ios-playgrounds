struct Note {
    // ... needs volume, tone, duration, etc.
}

protocol Instrument {
    func playNote(note:Note)
}

// Not to be confused with the built-in type String :)
struct GuitarString {}
struct Fret {}

class Guitar: Instrument {
    let frets:[Fret]
    let strings:[GuitarString]
    
    // A guitar typically has 20-24 frets and 6 strings.
    init(frets:[Fret], strings:[GuitarString]) {
        self.frets = frets
        self.strings = strings
    }
    
    func stringForNote(note: Note) -> GuitarString {
        // TODO: logic to choose the correct string to play
        return strings[0]
    }
    
    func fretNote(note: Note, onString:GuitarString) {
        // Press down the correct fret (typically left hand).
    }
    
    func pluckString(string: GuitarString) {
        // Pluck the note (typically the right hand).
        print("twang 🎶")
    }
    
    func playNote(note: Note) {
        let string = stringForNote(note)
        fretNote(note, onString: string)
        pluckString(string)
    }
}

class ElectricGuitar:Guitar {
    // The electric guitar has adjustable knobs for tone and volume.
    var volumeLevel:Float = 1.0
    var toneLevel:Float = 1.0
    
    // Notice the override keyword.
    override func pluckString(string: GuitarString) {
        if volumeLevel > 0.7 {
            print("🎸🎸🎸 DRAOWWW")
        } else if volumeLevel > 0 {
            print("🎸 twang")
        } else { // volumeLevel is 0
            super.pluckString(string)
        }
        // TODO: incorporate tone.
    }
}

let guitar = Guitar(frets: [Fret()], strings: [GuitarString()])
guitar.playNote(Note())

let electric = ElectricGuitar(frets: [Fret()], strings: [GuitarString()])
electric.playNote(Note())



var anyGuitar:Guitar = Guitar(frets: [Fret()], strings: [GuitarString()])
anyGuitar.playNote(Note())

anyGuitar = electric
anyGuitar.playNote(Note())



///////////////// BLACKJACK

protocol PlayingCard {
    var isFaceDown:Bool { get set }
    var shortName:String { get }
    
    //    func flipOver()
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
    var cards:[SuitedCard] = []
    
    init() {
        for suit in suits {
            for value in values {
                cards.append(SuitedCard(suit: suit, value: value, isFaceDown: true))
            }
        }
        shuffle()
    }
    
    func shuffle() {
        // TODO: implement shuffle
    }
}

class BlackjackPlayer {
    var hand:[SuitedCard] = []
    
    func playTurn(dealer: Dealer) {
        while(!hasBusted()) {
            // TODO: decide whether to hit or stand
        }
    }
    
    func hit(dealer:Dealer) {
        dealer.hit(self)
    }
    
    func stand(dealer:Dealer) {
        dealer.stand(self)
    }
    
    func hasBusted() -> Bool {
        var total = 0
        for card in hand {
            switch card.value {
            case .Ace:
                total += 1
            case .Two:
                total += 2
            case .Three:
                total += 3
            case .Four:
                total += 4
            case .Five:
                total += 5
            case .Six:
                total += 6
            case .Seven:
                total += 7
            case .Eight:
                total += 8
            case .Nine:
                total += 9
            case .Ten, .Jack, .Queen, .King:
                total += 10
            }
        }
        return total > 21
    }
}

class Dealer:BlackjackPlayer {
    var deck = Deck()
    let opponents:[BlackjackPlayer]
    
    var activeOpponentIndex:Int = 0
    
    init(opponents:[BlackjackPlayer]) {
        self.opponents = opponents
    }
    
    func startGame() {
        // Deal a hand to my opponents and myself.
        for player in opponents {
            dealTo(player)
        }
        dealTo(self)
        
        // Start with player "0"
        activeOpponentIndex = 0
        opponents[activeOpponentIndex].playTurn(self)
    }
    
    func dealTo(player:BlackjackPlayer) {
        if let card = deck.cards.popLast(),
            var faceUp = deck.cards.popLast()
        {
            faceUp.isFaceDown = false
            player.hand = [card, faceUp]
        }
    }
    
    override func playTurn(dealer: Dealer) {
        // the blackjack dealer always has to hit if hand is < 17 points, else stand
    }
    
    override func hit(player:BlackjackPlayer) {
        if var card = deck.cards.popLast() {
            card.isFaceDown = false
            player.hand.append(card)
        }
    }
    
    override func stand(player: BlackjackPlayer) {
        if let _ = player as? Dealer {
            // I (the dealer) just finished my turn. Time to see who the winner is!
            endRound()
        } else if activeOpponentIndex < opponents.count - 1 {
            // It's the next player's turn.
            activeOpponentIndex += 1
            opponents[activeOpponentIndex].playTurn(self)
        } else {
            // It's the dealer's turn (my turn).
            playTurn(self)
        }
    }
    
    func endRound() {
        // TODO: determine a winner
        
        for player in opponents {
            for card in player.hand {
                deck.cards.append(card)
            }
            player.hand = []
        }
        deck.shuffle()
    }
}