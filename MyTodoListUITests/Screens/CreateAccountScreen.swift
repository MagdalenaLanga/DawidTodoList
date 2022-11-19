//
//  CreateAccountScreen.swift
//  MyTodoListUITests
//
//  Created by Magdalena Langa on 19/11/2022.
//

import XCTest

class CreateAccountScreen: BaseScreen {
    private lazy var username = app.textFields[AccessibilityID.CreateAccount.usernameTextField].firstMatch
    private lazy var password = app.secureTextFields[AccessibilityID.CreateAccount.passwordTextField].firstMatch
    private lazy var password2 = app.secureTextFields[AccessibilityID.CreateAccount.repeatPassword].firstMatch
    private lazy var create = app.buttons[AccessibilityID.CreateAccount.createButton]
    
    //zeby mozna bylo chainowac trzeba dodac selfy i discardable - ale o tym jeszcze przeczytac
    @discardableResult
    func enterUsername(_ firstName: String) -> Self {
        username.tap()
        username.typeText(firstName)
        return self
    }
    @discardableResult
    func enterPassword(yourPassword: String) -> Self {
        password.tap()
        password.typeText(yourPassword)
        return self
    }
    @discardableResult
    func repeatPassword(repeatPassword: String) -> Self {
        password2.tap()
        password2.typeText(repeatPassword)
        return self
    }
    @discardableResult
    func tapCreate() -> Self {
        create.tap()
        return self
    }
}
