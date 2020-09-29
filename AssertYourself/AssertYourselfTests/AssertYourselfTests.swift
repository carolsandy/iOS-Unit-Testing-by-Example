//
//  AssertYourselfTests.swift
//  AssertYourselfTests
//
//  Created by Carmen Salvador on 23/09/20.
//  Copyright © 2020 Carmen Salvador. All rights reserved.
//

import XCTest
@testable import AssertYourself

struct SimpleStruct {
    let x: Int
    let y: Int
}

struct StructWithDescription: CustomStringConvertible {
    let x: Int
    let y: Int
    var description: String { "(\(x), \(y))"}
}

class AssertYourselfTests: XCTestCase {
    func test_fail() {
//        XCTFail()
    }
    
    func test_fail_withSimpleMessage() {
        XCTFail("We have a problem")
    }
    
    func test_fail_withInterpolatedMessage() {
        let theAnswer = 42
        XCTFail("The answer to the Great Question is \(theAnswer)")
    }
    
    func test_avoidConditionalCode() {
        let success = false
        if !success {
            XCTFail()
        }
    }
    
    func test_assertTrue() {
        let success = false
        XCTAssertTrue(success)
    }
    
    func test_assertNil() {
        let optionalValue: Int? = 123
        XCTAssertNil(optionalValue)
    }
    
    func test_assertNil_withSimpleStruct() {
        let optionalValue: SimpleStruct = SimpleStruct(x: 1, y: 2)
        XCTAssertNil(optionalValue)
    }
    
    func test_assertNil_withSelfDescribingType() {
        let optionalValue: StructWithDescription? = StructWithDescription(x: 1, y: 2)
        XCTAssertNil(optionalValue)
    }
    
    func test_assertEqual() {
        let actual = "actual"
        XCTAssertEqual(actual, "expected")
    }
    
    func test_assertEqual_withOptional() {
        let result: String? = "foo"
        XCTAssertEqual(result, "bar")
    }
    
    func test_floatingPointDanger() {
        let result = 0.1 + 0.2
        XCTAssertEqual(result, 0.3, accuracy: 0.0001)
    }
    
    func test_messageOverKill() {
        let actual = "actual"
        XCTAssertEqual(actual, "expected", "Expected \"expected\" but got \"\(actual)\"")
    }
}
