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
        let result = record(event: .touchdown, team: "New York Giants", game: game)
        let expected = game
        XCTAssertEqual(result, expected)
    }
    
    func testRecordforJets() {
        let result = record(event: .twoPointConversion, team: "New York Jets", game: game)
        let expected = game
        XCTAssertEqual(result, expected)
    }
    
    

    
}
