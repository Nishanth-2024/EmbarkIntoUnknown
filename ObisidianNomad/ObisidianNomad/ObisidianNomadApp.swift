//
//  ObisidianNomadApp.swift
//  ObisidianNomad
//
//  Created by VEMULA Nishanth on 10/05/24.
//

import SwiftUI

@main
struct ObisidianNomadApp: App {
    @State private var dataModel = LoginViewModel()
    var body: some Scene {
        WindowGroup {
            if dataModel.isLoggedIn {
                DashboardView()
            } else {
                LoginView(dataModel: $dataModel)
            }
        }
    }
}
