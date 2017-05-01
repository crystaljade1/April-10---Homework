//
//  gridironTests.swift
//  gridironTests
//
//  Created by Crystal Jade Allen-Washington on 4/11/17.
//  Copyright © 2017 Crystal Jade Allen-Washington. All rights reserved.
//

import XCTest
@testable import gridiron

class gridironTests: XCTestCase {
    func testRecordforGiants() {
        let game = Game(teamOne: Team(), teamTwo: Team())
        let result = record(event: .touchdown, team: "New York Giants", game: game)
        let expected = game
        XCTAssertEqual(result, expected)
    }
    
    func testRecordforJets() {
        let game = Game(teamOne: Team(), teamTwo: Team())
        let result = record(event: .twoPointConversion, team: "New York Jets", game: game)
        let expected = game
        XCTAssertEqual(result, expected)
    }
    
    
    func testRequestScoreOfOneTeam() {
        let game = Game(teamOne: "New York Giants", teamTwo: "New York Jets")
        let scoringEventsforTeamTwo: [ScoringEvent] = [.twoPointConversion, .fieldGoal]
        var score = (8, 2)
        var teamOneScore: Int = 8
        
        let result = Game(requestScore(of: "New York Giants"))
        let expected = teamOneScore
        XCTAssertEqual(result, expected)
    }
    
    func testRecord() {
        let game = Game(teamOne: Team(), teamTwo: Team())
        let newGame = game
        let result = record(event: .touchdown, team: "New York Jets", game: game)
        let expected = newGame
        XCTAssertEqual(result, expected)
    }

    
}
