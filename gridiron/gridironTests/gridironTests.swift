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
    
    
    func testRequestScoreOfOneTeamWithNoPoints() {
        var game = Game(teamOne: "New York Giants", teamTwo: "New York Jets")
        game.scoringEventsforTeamOne = []
        let expected = 0
        let result = game.requestScore(of: "New York Giants")
        XCTAssertEqual(result, expected)
    }
    
    func testRequestScoreOfTeamOneWithPoints() {
        var game = Game(teamOne: "New York Giants", teamTwo: "New York Jets")
        game.scoringEventsforTeamTwo = [.fieldGoal, .safety]
        let expected = 5
        let result = game.requestScore(of: "New York Jets")
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
