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
        ZStack {
            // TODO: Background Image
            NavigationView {
                List {
                    ForEach(viewModel.data) { section in
                        Section(header: Text(section.title)) {
                            ForEach(section.collectionItem) { viewItem in
                                NavigationLink {
                                    viewItem.view
                                } label: {
                                    Text(viewItem.title)
                                }
                            }
                        }
                    }
                }
                .listStyle(GroupedListStyle())
                .navigationDestination(for: ViewsCollectionItem.self) { viewItem in
                    viewItem.view
                }
                .navigationTitle(viewModel.title)
                .tint(.customControl)
            }
            .tint(.customAccent)
        }
    }
    
}

#Preview {
    GenericSectionListView(viewModel: GenericSectionListViewModel(title: "Single List View", data: MockData1.sectionListData))
}

