//
//  MockData1.swift
//  ObisidianNomad
//
//  Created by VEMULA Nishanth on 15/05/24.
//

import SwiftUI

struct MockData1 {
    private init(){}
    
    public static let singleListData: [ViewsCollectionItem] = [
        ViewsCollectionItem(
            title: "Login View 1",
            view: AnyView(
                LoginView1(dataModel: .constant(LoginViewModel()))
            )
        ),
        ViewsCollectionItem(title: "Go to View 2", view: AnyView(CustomDummyView()))
    ]
    
    public static let sectionListData: [ViewsCollectionSectionItem] = [
        ViewsCollectionSectionItem(title: "Section 1", collectionItem: [
            ViewsCollectionItem(
                title: "Login View 1",
                view: AnyView(
                    LoginView1(dataModel: .constant(LoginViewModel()))
                )
            ),
            ViewsCollectionItem(title: "Dummy View 1 2", view: AnyView(CustomDummyView()))
        ]),
        ViewsCollectionSectionItem(title: "Section 2", collectionItem: [
            ViewsCollectionItem(title: "Dummy View 2 1", view: AnyView(CustomDummyView())),
            ViewsCollectionItem(title: "Dummy View 2 2", view: AnyView(CustomDummyView()))
        ]),
        ViewsCollectionSectionItem(title: "Section 3", collectionItem: [
            ViewsCollectionItem(title: "Dummy View 3 1", view: AnyView(CustomDummyView())),
            ViewsCollectionItem(title: "Dummy View 3 2", view: AnyView(CustomDummyView())),
            ViewsCollectionItem(title: "Dummy View 3 3", view: AnyView(CustomDummyView()))
        ])
    ]
}
