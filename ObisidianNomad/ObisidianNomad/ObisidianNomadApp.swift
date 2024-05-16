//
//  ObisidianNomadApp.swift
//  ObisidianNomad
//
//  Created by VEMULA Nishanth on 10/05/24.
//

import SwiftUI

@main
struct ObisidianNomadApp: App {
    var body: some Scene {
        WindowGroup {
//            GenericListView(viewModel: GenericListViewModel(title: "Single List View", data: MockData1.singleListData))
            GenericSectionListView(viewModel: GenericSectionListViewModel(title: "Section List View", data: MockData1.sectionListData))
        }
    }
}
