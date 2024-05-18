//
//  GenericListView.swift
//  ObisidianNomad
//
//  Created by VEMULA Nishanth on 15/05/24.
//

import SwiftUI

struct GenericListView: View {
    
    public var viewModel: GenericListViewModel
    var body: some View {
        // TODO: Background Image
        NavigationView {
            List(viewModel.data, id:\.id) { item in
                NavigationLink(destination: item.view) {
                    Text(item.title)
                }
            }
            .navigationTitle(viewModel.title)
        }
    }
}

#Preview {
    GenericListView(viewModel: GenericListViewModel(title: "Single List View", data: MockData1.singleListData))
}
