//
//  MainPresenterTest.swift
//  Pattern Lessons MVP 2Tests
//
//  Created by Евгений Тимофеев on 28.05.2022.
//

import XCTest
@testable import Pattern_Lessons_MVP_2

class MockView: MainViewProtocol {
    var titleTest: String?
    func setGreeting(greeting: String) {
        self.titleTest = greeting
    }
    
    
}

class MainPresenterTest: XCTestCase {
    
    var view: MockView!
    var person: CommentModel!
    var presenter: MainPresenter!
    
    override func setUpWithError() throws {
        view = MockView()
        person = CommentModel(firstName: "Buzz", lastName: "Fuzz")
        presenter = MainPresenter(view: view, person: person)
}
    
    override func tearDownWithError() throws {
        view = nil
        person = nil
        presenter = nil
    }
    func testModuleIsNotNil() {
        XCTAssertNotNil(view, "view is not nil")
        XCTAssertNotNil(person, "person is not nil")
        XCTAssertNotNil(presenter, "presenter is not nil")
    }
    
    func testView() {
        presenter.showGreeting()
        XCTAssertEqual(view.titleTest, "Buzz Fuzz")
    }
    
    
    func testPersonModel(){
        XCTAssertEqual(person.firstName, "Buzz")
        XCTAssertEqual(person.lastName, "Fuzz")

    }
}
