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
    func testToDoCount_AfterAddingOneItem_IsOne() {
        sut.addItem(item: ToDoItem(title: "Test title"))
        XCTAssertEqual(sut.toDoCount, 1, "toDoCount should be 1")
    }
    func testItemAtIndex_ShouldReturnPreviouslyAddedItem() {
        let item = ToDoItem(title: "Item")
        sut.addItem(item: item)
        let returnedItem = sut.itemAtIndex(index: 0)
        XCTAssertEqual(item.title, returnedItem.title,
                       "should be the same item")
        
       
    }
    func testCheckingItem_ChangesCountOfToDoAndOfDoneItems() {
        sut.addItem(item: ToDoItem(title: "First Item"))
        sut.checkItemAtIndex(index: 0)
        XCTAssertEqual(sut.toDoCount, 0, "toDoCount should be 0")
        XCTAssertEqual(sut.doneCount, 1, "doneCount should be 1")
        
    }
    
    func testCheckingItem_RemovesItFromTheToDoItemList() {
        let firstItem = ToDoItem(title: "First")
        let secondItem = ToDoItem(title: "Second")
        sut.addItem(item:firstItem)
        sut.addItem(item:secondItem)
        sut.checkItemAtIndex(index:0)
        XCTAssertEqual(sut.itemAtIndex(index:0).title, secondItem.title)
    }
    
    func testDoneItemAtIndex_ShouldReturnPreviouslyCheckedItem() {
        let item = ToDoItem(title: "Item")
        sut.addItem(item:item)
        sut.checkItemAtIndex(index:0)
        let returnedItem = sut.doneItemAtIndex(index:0)
        XCTAssertEqual(item.title, returnedItem.title, "Title should be same")
    }
}
