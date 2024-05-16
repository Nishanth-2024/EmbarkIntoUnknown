//
//  GenericSectionListViewModel.swift
//  ObisidianNomad
//
//  Created by VEMULA Nishanth on 15/05/24.
//

import SwiftUI

@Observable final class GenericSectionListViewModel {
    let title: String
    let data: [ViewsCollectionSectionItem]
    
    init(title: String, data: [ViewsCollectionSectionItem]) {
        self.title = title
        self.data = data
    }
}
