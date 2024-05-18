//
//  ViewsCollectionItem.swift
//  ObisidianNomad
//
//  Created by VEMULA Nishanth on 15/05/24.
//

import SwiftUI

struct ViewsCollectionItem: Identifiable {
    let id = UUID()
    let title: String
    let view: AnyView

    init(title: String, view: AnyView) {
        self.title = title
        self.view = view
    }
}

struct ViewsCollectionSectionItem: Identifiable {
    let id = UUID()
    let title: String
    let collectionItem: [ViewsCollectionItem]

    init(title: String, collectionItem: [ViewsCollectionItem]) {
        self.title = title
        self.collectionItem = collectionItem
    }
}
