//
//  BaseTest.swift
//  MyTodoListUITests
//
//  Created by Magdalena Langa on 19/11/2022.
//

import XCTest

class BaseTest: XCTestCase {
    let app = XCUIApplication()
    //option + najechać na funkcję i pojawi się ?, po kliknięciu okienko z dokumentacją
    
    //to samo co before w cypressie
    //override nadpisuje jeżeli gdzieś już był setUp
    override func setUp() {
        app.launchArguments.append("clearLocalData")
        app.launch()
    }
}
