//
//  ItemManagerTests.swift
//  TodoTests
//  Copyright © 2019 Saurabh. All rights reserved.
//

import XCTest
@testable import Todo
class ItemManagerTests: XCTestCase {
var sut: ItemManager!
    override func setUp() {
         sut = ItemManager()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testToDoCount_Initially_ShouldBeZero() {
        
        XCTAssertEqual(sut.toDoCount, 0,
                       "Initially toDo count should be 0")
    }

    
    func testDoneCount_Initially_ShouldBeZero() {
        
        XCTAssertEqual(sut.doneCount, 0,
                       "Initially done count should be 0")
    }
    
}
