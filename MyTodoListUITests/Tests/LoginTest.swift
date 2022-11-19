//
//  LoginTest.swift
//  MyTodoListUITests
//
//  Created by Magdalena Langa on 19/11/2022.
//

import XCTest

class LoginTest: BaseTest {
    private var toDoListAssertion = ToDoListAsertion()
    
    //test się zawsze musi zaczynac od 'test' jak nizej
    //jak alerty długo wiszą to comand + b żeby przebudować projekt i wtedy powinny zniknac
    func testShowError() {
        LoginScreen().tapLogin()
        XCTAssertTrue(toDoListAssertion.assertLoginError())
    }
    
}
