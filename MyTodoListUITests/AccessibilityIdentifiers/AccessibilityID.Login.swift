//
//  AccessibilityID.Login.swift
//  MyTodoListUITests
//
//  Created by Magdalena Langa on 19/11/2022.
//

extension AccessibilityID {
    enum Login {
        //dzieki temu ze to jest static let nie musze tworzyc instancji tylko moge sie po kropce do nich dostac. Patrz w LoginScreen itd.
        static let createAccount = "loginCreateAccountButtonId"
        static let login = "loginLoginButtonId"
    }
}
