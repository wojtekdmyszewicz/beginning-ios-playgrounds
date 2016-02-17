//: [Previous](@previous)

import Foundation
import UIKit

//: If Statements Exercise: Ship it!  Or don't ...

class Game {
    var bugs: Int
    var hasMusic: Bool
    var levels: Int
    
    init(bugs: Int, hasMusic: Bool, levels: Int) {
        self.bugs = bugs
        self.hasMusic = hasMusic
        self.levels = levels
    }
}

var ponyQuest = Game(bugs: 12, hasMusic: true, levels: 6)
var sixDegreesOfKevinBacon = Game(bugs: 5, hasMusic: true, levels: 3)
var slowAdventuresWithMorrisTheLoris = Game(bugs: 9, hasMusic: true, levels: 7)

func release(game: Game) {
    print("Ship it, ready for release!")
}

func checkGameForRelease(game: Game) {
    // TODO: Add your if statements here!
    
    let validForRelease = game.bugs < 10 && game.hasMusic && game.levels >= 5
    var message = ""
    
    if !validForRelease {
        print("Not ready for release!")
        
        switch(validForRelease) {
            case game.bugs >= 10:
                message = "Game contains to much bugs"
                break
            case !game.hasMusic :
                message = "Game has no music"
                break
            case game.levels < 5:
                message = "Game has not enough levels"
                break
            default:
                break
        }
        
        print(message)
        
        return
    }
    
    release(game)
}

checkGameForRelease(ponyQuest)
checkGameForRelease(sixDegreesOfKevinBacon)
checkGameForRelease(slowAdventuresWithMorrisTheLoris)

//: [Next](@next)
