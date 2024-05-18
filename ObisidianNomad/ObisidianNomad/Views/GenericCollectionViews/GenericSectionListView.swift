//
//  GenericSectionListView.swift
//  ObisidianNomad
//
//  Created by VEMULA Nishanth on 15/05/24.
//

import SwiftUI

struct GenericSectionListView: View {
    
    public var viewModel: GenericSectionListViewModel
    @State var selection: ViewsCollectionItem?
    
    var body: some View {
            NavigationView {
                List {
                    ForEach(viewModel.data, id: \.id) { section in
                        sectionView(section)
                    }
                }
                .listStyle(GroupedListStyle())
                .navigationTitle(viewModel.title)
                .tint(.customControl)
            }
            .tint(.customAccent)
    }
    
    private func sectionView(_ section: ViewsCollectionSectionItem) -> some View {
        Section(header: Text(section.title)) {
            ForEach(section.collectionItem, id:\.id) { viewItem in
                NavigationLink {
                    viewItem.view
                } label: {
                    Text(viewItem.title)
                }
            }
        }
    }
    
}

#Preview {
    GenericSectionListView(viewModel: GenericSectionListViewModel(title: "Single List View", data: MockData1.sectionListData))
}

