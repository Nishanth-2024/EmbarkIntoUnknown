//
//  GenericListView.swift
//  ObisidianNomad
//
//  Created by VEMULA Nishanth on 15/05/24.
//

import SwiftUI

struct GenericListView: View {
    
    @Environment(\.colorScheme) var colScheme: ColorScheme
    
    public var viewModel: GenericListViewModel
    
    @State private var selected: ViewsCollectionItem?
    
    private var gradCol: Color {
        colScheme == ColorScheme.dark ? .white : .black
    }
    
    var body: some View {
        NavigationSplitView {
            ZStack {
                // TODO: Background Image
                List(viewModel.data, selection: $selected) { item in
                    NavigationLink(value: item) {
                        LinearGradient(
                            colors: [gradCol.opacity(0.75), gradCol.opacity(0.125)],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                        .mask(alignment: .leading) {
                            Text(item.title)
                                .fontWeight(.bold)
                                // .font(.system(size: 36))
                        }
                    }
                    //.listRowSeparator(.hidden)
                    //.frame(height: 96)
                }
                .scrollBounceBehavior(.basedOnSize, axes: .vertical)
                //.listStyle(InsetListStyle())
                //.listStyle(PlainListStyle())
                //.listStyle(SidebarListStyle())
                //.listStyle(GroupedListStyle())
                .listStyle(InsetGroupedListStyle())
                .tint(.customControl)
                /*.scrollContentBackground(.hidden)
                .background {
                    LinearGradient(gradient: Constants.shared.gradient5,
                                   startPoint: .topLeading,
                                   endPoint: .bottomTrailing).blur(radius: 120, opaque: false)
                    .ignoresSafeArea(.all)
                }*/
            }
            .navigationTitle(viewModel.title)
        } detail: {
            if selected != nil {
                CustomDummyView(title: selected!.viewName)
            } else {
                CustomDummyView()
            }
        }
    }
}

#Preview {
    GenericListView(viewModel: GenericListViewModel(title: "Single List View", data: MockData1.singleListData))
}
