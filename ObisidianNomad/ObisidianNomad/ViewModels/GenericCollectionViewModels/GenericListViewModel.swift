//
//  GenericListViewModel.swift
//  ObisidianNomad
//
//  Created by VEMULA Nishanth on 15/05/24.
//

import SwiftUI

@Observable final class GenericListViewModel {
    let title: String
    let data: [ViewsCollectionItem]
    
    init(title: String, data: [ViewsCollectionItem]) {
        self.title = title
        self.data = data
    }
}
