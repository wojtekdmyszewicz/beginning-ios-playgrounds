//: [Previous](@previous)

import Foundation
import UIKit

//: If, Else-If Exercise: Triathlon training

// Here is a class to represent the triathlete in training.
class Trainee {
    let name: String
    var canFinishSwim: Bool
    var canFinishBike: Bool
    var canFinishRun: Bool
    
    init(name: String, canFinishSwim: Bool, canFinishBike: Bool, canFinishRun: Bool) {
        self.name = name
        self.canFinishSwim = canFinishSwim
        self.canFinishBike = canFinishBike
        self.canFinishRun = canFinishRun
    }
}

// Here we will instantiate and initialize a couple of trainees.
var athlete1 = Trainee(name: "Kurt", canFinishSwim: false, canFinishBike: true, canFinishRun: true)
var athlete2 = Trainee(name: "Teresa", canFinishSwim: true, canFinishBike: true, canFinishRun: true)

func checkTrainingStatus (triathleteInTraining: Trainee) {
    //TODO: Add your if, else-if statement here!
    
    let personIsReady = triathleteInTraining.canFinishSwim && triathleteInTraining.canFinishBike && triathleteInTraining.canFinishRun
    var message = ""
    
    if(!personIsReady) {
        
        switch(personIsReady) {
        case !triathleteInTraining.canFinishSwim:
            message = "You need to focus on swimming"
            break
        case !triathleteInTraining.canFinishBike:
            message = "You need to focus on biking"
            break
        case !triathleteInTraining.canFinishRun:
            message = "You need to focus on running"
            break
        default: break
        }

    }else {
        message = "Person is ready"
    }
    
    print(message)
}

checkTrainingStatus(athlete1)
checkTrainingStatus(athlete2)

