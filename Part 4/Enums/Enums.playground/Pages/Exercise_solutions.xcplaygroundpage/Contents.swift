//: [Previous](@previous)

//: __Probem 1__
//:
//: __1a.__
//: Write an enum to represent the five fingers on a human hand.
//:
//: __1b.__
//: Assign a rawValue of type Int to each finger.
// Solution
enum Finger: Int {
    case Thumb, Index, Middle, Ring, Pinky
}

//: __Problem 2__
//:
//: Finish the commented switch statement below by writing a case for each season. In each executable statement define the variable `favoriteActivity` to be your favorite activity during a given season.
enum Season {
    case Fall
    case Winter
    case Spring
    case Summer
}

var myFavoriteSeason = Season.Fall
var favoriteActivity = ""

//Solution
switch (myFavoriteSeason) {
case .Fall:
    favoriteActivity = "watching the leaves change color."
case .Winter:
    favoriteActivity = "skiing."
case .Spring:
    favoriteActivity = "seeing the wildflowers bloom"
case .Summer:
    favoriteActivity = "swimming in the river"
}
//: __Problem 3__
//:
//: __3a.__ Assign rawValues to each member of the enum, Weather. The rawValue should be a string indicating the appropriate accessory or attire for that weather. For, example, `case Snow = "parka"`.
// Solution
enum Weather: String {
    case Rain = "umbrella"
    case Sun = "sunglasses"
    case Snow = "parka"
    case Wind = "jacket"
}

//: __3b.__ Using string interpolation and one of the rawValues you just assigned, recreate this reminder for a friend who is headed out into the elements.
var currentWeather = Weather.Sun

// Solution
var reminder = "Don't forget your \(currentWeather.rawValue)!"
//: __Problem 4: Revisiting value types and reference types.__
//:
//: At the end of the code snippet below, what is the value of macchiato.steamedMilk when EspressoDrink is implemented as a struct? What about when EspressoDrink is implemented as a class?
enum Amount {
    case None
    case Splash
    case Some
    case Alot
}

struct EspressoDrink {
    let numberOfShots: Int
    var steamedMilk: Amount
    let foam: Bool
    
    init(numberOfShots: Int, steamedMilk: Amount, foam: Bool) {
        self.numberOfShots = numberOfShots
        self.steamedMilk = steamedMilk
        self.foam = foam
    }
}

var macchiato = EspressoDrink(numberOfShots: 2, steamedMilk: .None, foam: true)
var espressoForGabrielle = macchiato
espressoForGabrielle.steamedMilk = .Splash
macchiato.steamedMilk

// Solution
// if EspressoDrink is a struct, macchiato.steamedMilk = .None
// if EspressoDrink is a class, macchiato.steamedMilk = .Splash


