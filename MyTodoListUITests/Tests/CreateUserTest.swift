//
//  CreateUserTest.swift
//  MyTodoListUITests
//
//  Created by Magdalena Langa on 19/11/2022.
//

import XCTest

class CreateUserTest: BaseTest {
    private var toDoListAssertion = ToDoListAsertion()
    
    func testCreateUserWithSuccess() {
        LoginScreen()
            .tapCreateAccount()
        CreateAccountScreen()
            .enterUsername("Magdalena")
            .enterPassword(yourPassword: "Langa")
            .repeatPassword(repeatPassword: "Magdalena123!")
            .tapCreate()
        XCTAssertTrue(toDoListAssertion.assertAccountCreation())
    }
}
