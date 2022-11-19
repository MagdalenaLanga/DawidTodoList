//
//  ToDoListAssertion.swift
//  MyTodoListUITests
//
//  Created by Magdalena Langa on 19/11/2022.
//

import XCTest

class ToDoListAsertion: BaseScreen {
    lazy var headline = app.staticTexts[AccessibilityID.ToDoList.nothingToDoText]
    lazy var errorPopUpHeadline = app.staticTexts["Error"]
    
    func assertAccountCreation() -> Bool {
        return headline.exists
    }
    
    func assertLoginError() -> Bool {
        return errorPopUpHeadline.exists
    }
}
