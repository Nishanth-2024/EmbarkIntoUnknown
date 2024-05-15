//
//  GenericListViewModel.swift
//  ObisidianNomad
//
//  Created by VEMULA Nishanth on 15/05/24.
//

import SwiftUI

@Observable final class SingleListViewModel {
    let title: String
    let data: [ListItem]
    
    init(title: String, data: [ListItem]) {
        self.title = title
        self.data = data
    }
}

struct ListItem: Identifiable {
    let id = UUID()
    let title: String
    let view: AnyView

    init(title: String, view: AnyView) {
        self.title = title
        self.view = view
    }
}
