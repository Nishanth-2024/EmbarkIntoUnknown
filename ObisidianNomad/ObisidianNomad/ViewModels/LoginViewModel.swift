//
//  LoginViewModel.swift
//  ObisidianNomad
//
//  Created by VEMULA Nishanth on 10/05/24.
//

import SwiftUI

@Observable class LoginViewModel {
    
    var userId: String
    var password: String
    var rememberMe: Bool
    private(set) var isLoggedIn: Bool
    
    var disableLogin: Bool {
        get {
            return userId.isEmpty || password.isEmpty
        }
    }
    
    init() {
        userId = ""
        password = ""
        rememberMe = false
        isLoggedIn = false
    }
    
    public func loginAction() {
        DispatchQueue.main.async {
            self.isLoggedIn = true
        }
    }
}
