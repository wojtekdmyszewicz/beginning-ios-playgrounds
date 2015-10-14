//: [Previous](@previous)

//: ## Enum initialization

// As you saw in the previous example,



// Enum types may also be initialized with rawValues.
enum MazeDirection: Int {
    case Up = 0, Right, Down, Left
}

var currentDirection = MazeDirection(rawValue: 0)

enum AmericanLeagueWest: String {
    case As = "Oakland"
    case Astros = "Houston"
    case Angels = "Los Angeles"
    case Mariners = "Seattle"
    case Rangers = "Arlington"
}

let myFavoriteTeam = AmericanLeagueWest(rawValue: "Oakland")

//: [Next](@next)
