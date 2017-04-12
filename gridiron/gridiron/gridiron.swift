//
//  gridiron.swift
//  gridiron
//
//  Created by Crystal Jade Allen-Washington on 4/11/17.
//  Copyright © 2017 Crystal Jade Allen-Washington. All rights reserved.
//

import Foundation

typealias Score = Int
var pointValue = 0


// Create a type ScoringEvent to represent the various ways that points can be attained in a game.

enum ScoringEvent {
    
    case touchdown
    case extraPoint
    case twoPointConversion
    case fieldGoal
    case safety
    
    var pointValue: Int {
        switch self {
        case .touchdown:
            return 6
        case .extraPoint:
            return 1
        case .twoPointConversion:
            return 2
        case .fieldGoal:
            return 3
        case .safety:
            return 2
        }
    }
}

// Create a type Team with a name.

typealias Team = String


// Create a type Game with two teams and an array of scoring events for each team. Game should have an initializer that accepts two teams and automatically creates an array representing a score of 0-0.

struct Game: Equatable {
    var teamOne: Team = "New York Giants"
    var teamTwo: Team = "New York Jets"
    var scoringEventsforTeamOne: [ScoringEvent]
    var scoringEventsforTeamTwo: [ScoringEvent]
    
    public static func == (gameOne: Game, gameTwo: Game) -> Bool {
        return (gameOne.teamOne == gameOne.teamTwo) && (gameTwo.teamOne == gameTwo.teamTwo) && (gameOne.scoringEventsforTeamOne == gameOne.scoringEventsforTeamTwo) && (gameTwo.scoringEventsforTeamOne == gameTwo.scoringEventsforTeamTwo)
        
    }
    
    init(teamOne: Team, teamTwo: Team) {
        self.teamOne = teamOne
        self.teamTwo = teamTwo
        self.scoringEventsforTeamOne = []
        self.scoringEventsforTeamTwo = []
        
    }


// Create a method on the type Game: requestScore(of team: Team) -> Int

var teamOneArray: [Int] = []
var teamTwoArray: [Int] = []
let score = Int()

mutating func requestScore(team: Team) -> Int {
    if team == teamOne {
        for _ in scoringEventsforTeamOne {
            teamOneArray.append(pointValue)
        }
    } else if team == teamTwo {
        for _ in scoringEventsforTeamTwo {
            teamTwoArray.append(pointValue)
        }
    }
    
    return score
}

}

// Create a function named record(event: ScoringEvent, for team: Team, in game: Game) -> Game? that returns a new game with the event added so long as the team is playing within the provided game.


func record(event: ScoringEvent, team: Team, game: Game) -> Game? {
    
    var newGame = game
    
    if team == game.teamOne {
        newGame.scoringEventsforTeamOne = []
        newGame.scoringEventsforTeamOne.append(event)
        
    } else if team == game.teamTwo {
        newGame.scoringEventsforTeamTwo.append(event)
    }
    
    return newGame
    
}


var game = Game(teamOne: Team(), teamTwo: Team())

// Create a method on the type Game requestScore(of team: Team) -> Int

// See Game

