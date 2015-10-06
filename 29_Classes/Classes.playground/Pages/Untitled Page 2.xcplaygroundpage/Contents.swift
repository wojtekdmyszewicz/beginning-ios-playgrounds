
struct Note {
    // ... needs volume, tone, duration, etc.
}

protocol Instrument {
    func playNote(note:Note)
}

class Musician {
    
    var instrument:Instrument
    
    init(instrument:Instrument) {
        self.instrument = instrument
    }
}

struct MusicianStruct {
    
    var instrument:Instrument
    
    init(instrument:Instrument) {
        self.instrument = instrument
    }
}

struct Fiddle: Instrument {
    func playNote(note:Note) {}
}
struct Banjo: Instrument {
    func playNote(note:Note) {}
}

func prepareForDuelingBanjos(musician:Musician) {
    musician.instrument = Banjo()
    musician.instrument
}
func prepareForDuelingBanjos(var musician:MusicianStruct) {
    musician.instrument = Banjo()
    musician.instrument
}

let musicianStruct = MusicianStruct(instrument: Fiddle())
prepareForDuelingBanjos(musicianStruct)
musicianStruct.instrument

let duo = [Musician(instrument: Fiddle()), Musician(instrument: Banjo())]
let musician = duo[0]
prepareForDuelingBanjos(musician)
musician.instrument


// CakeHaver example.

struct Cake {
}

protocol CakeHaver {
    var cake:Cake? { get set }
}

class CakeHaverClass:CakeHaver {
    var cake:Cake? = Cake()
}

struct CakeHaverStruct:CakeHaver {
    var cake:Cake? = Cake()
}

func eatCake(var cakeHaver:CakeHaver) {
    cakeHaver.cake = nil
}

func cakeStatus(cakeHaver:CakeHaver) {
    if let _ = cakeHaver.cake {
        print("Cake is still had")
    } else {
        print("No more cake")
    }
}

var valueType = CakeHaverStruct()
eatCake(valueType)
cakeStatus(valueType) // Prints "Cake is still had"

var referenceType = CakeHaverClass()
eatCake(referenceType)
cakeStatus(referenceType) // Prints "No more cake"

