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
            viewName: "LoginView1"
        ),
        ViewsCollectionItem(title: "Go to View 2", viewName: "Go to View 2"),
        ViewsCollectionItem(title: "Go to View 3", viewName: "Go to View 3"),
        ViewsCollectionItem(title: "Go to View 4", viewName: "Go to View 4"),
        ViewsCollectionItem(title: "Go to View 5", viewName: "Go to View 5"),
        ViewsCollectionItem(title: "Go to View 6", viewName: "Go to View 6"),
        ViewsCollectionItem(title: "Go to View 7", viewName: "Go to View 7")
    ]
    
    public static let sectionListData: [ViewsCollectionSectionItem] = [
        ViewsCollectionSectionItem(title: "Section 1", collectionItem: [
            ViewsCollectionItem(
                title: "Login View 1",
                viewName: "LoginView1"
            ),
            ViewsCollectionItem(title: "Dummy View 1 2", viewName: "Go to View 1 2")
        ]),
        ViewsCollectionSectionItem(title: "Section 2", collectionItem: [
            ViewsCollectionItem(title: "Dummy View 2 1", viewName: "Dummy View 2 1"),
            ViewsCollectionItem(title: "Dummy View 2 2", viewName: "Dummy View 2 2")
        ]),
        ViewsCollectionSectionItem(title: "Section 3", collectionItem: [
            ViewsCollectionItem(title: "Dummy View 3 1", viewName: "Dummy View 3 1"),
            ViewsCollectionItem(title: "Dummy View 3 2", viewName: "Dummy View 3 2"),
            ViewsCollectionItem(title: "Dummy View 3 3", viewName: "Dummy View 3 3")
        ])
    ]
}
