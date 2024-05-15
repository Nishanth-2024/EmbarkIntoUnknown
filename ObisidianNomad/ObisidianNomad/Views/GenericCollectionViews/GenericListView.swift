//
//  GenericListView.swift
//  ObisidianNomad
//
//  Created by VEMULA Nishanth on 15/05/24.
//

import SwiftUI

struct GenericListView: View {
    
    public var viewModel: SingleListViewModel
    var body: some View {
        ZStack {
            // TODO: Background Image
            NavigationView {
                List(viewModel.data) { item in
                    NavigationLink(destination: item.view) {
                        Text(item.title)
                    }
                }
                .navigationTitle(viewModel.title)
            }
        }
    }
}

#Preview {
    GenericListView(viewModel: SingleListViewModel(title: "Single List View", data: MockData1.singleListData))
}
