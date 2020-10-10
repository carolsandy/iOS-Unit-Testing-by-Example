//
//  MyClassTests.swift
//  LifeCycleTests
//
//  Created by Carmen Salvador on 07/10/20.
//  Copyright © 2020 Carmen Salvador. All rights reserved.
//

import XCTest
@testable import LifeCycle

class MyClassTests: XCTestCase {
    private var sut: MyClass!
    
    override func setUp() {
        super.setUp()
        sut = MyClass()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func test_methodOne() {
        sut.methodOne()
        
        // Normally, assert something
    }
    
    func test_methodTwo() {
        sut.methodTwo()
        
        // Normally, assert something
    }

}
