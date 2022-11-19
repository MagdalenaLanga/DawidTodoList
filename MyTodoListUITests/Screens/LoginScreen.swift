//
//  LoginScreen.swift
//  MyTodoListUITests
//
//  Created by Magdalena Langa on 19/11/2022.
//

import XCTest

//worek na selectory dla tego ekranu i akcje dla tego ekranu
class LoginScreen: BaseScreen {
    private lazy var createAccountButton = app.buttons[AccessibilityID.Login.createAccount].firstMatch
    private lazy var loginButton = app.buttons[AccessibilityID.Login.login]
    
    @discardableResult
    func tapCreateAccount () -> Self{
        createAccountButton.tap()
        return self
    }
    
    func tapLogin() {
        loginButton.tap()
    }
    
}
