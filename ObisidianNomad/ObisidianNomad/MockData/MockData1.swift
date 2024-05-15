//
//  MockData1.swift
//  ObisidianNomad
//
//  Created by VEMULA Nishanth on 15/05/24.
//

import SwiftUI

struct MockData1 {
    private init(){}
    
    public static let singleListData: [ListItem] = [
        ListItem(
            title: "Login View 1",
            view: AnyView(
                LoginView1(dataModel: .constant(LoginViewModel()))
            )
        ),
        ListItem(title: "Go to View 2", view: AnyView(CustomDummyView()))
    ]
}
