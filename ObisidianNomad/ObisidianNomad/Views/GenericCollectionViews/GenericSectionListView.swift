//
//  GenericSectionListView.swift
//  ObisidianNomad
//
//  Created by VEMULA Nishanth on 15/05/24.
//

import SwiftUI

struct GenericSectionListView: View {
    
    @Environment(\.colorScheme) var colScheme: ColorScheme
    
    public var viewModel: GenericSectionListViewModel
    @State private var selected: ViewsCollectionItem?
    @ObservedObject var singletonHelper: GenericSingletonHelper = GenericSingletonHelper.shared
    
    private var gradCol: Color {
        colScheme == ColorScheme.dark ? .white : .black
    }
    
    var body: some View {
        bodySplit()
    }
    
    private func bodyStack() -> some View {
        NavigationStack {
            List {
                ForEach(viewModel.data, id: \.id) { section in
                    sectionView(section)
                }
            }
            .scrollBounceBehavior(.basedOnSize)
            //.listStyle(InsetListStyle())
            //.listStyle(PlainListStyle())
            //.listStyle(SidebarListStyle())
            //.listStyle(GroupedListStyle())
            .listStyle(InsetGroupedListStyle())
            .tint(.customControl)
            .scrollContentBackground(.hidden)
            .background {
                LinearGradient(
                    gradient: colScheme == ColorScheme.light ? Constants.shared.gradient5 : Constants.shared.gradient4,
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing).blur(radius: 120, opaque: false)
                .ignoresSafeArea(.all)
            }
            .listStyle(GroupedListStyle())
            .navigationTitle(viewModel.title)
            .navigationDestination(for: ViewsCollectionItem.self) { selectedItem in
                CustomDummyView(title: selectedItem.viewName)
            }
            .tint(.customControl)
        }
        .tint(.customAccent)
    }
    
    private func bodySplit() -> some View {
        NavigationSplitView(sidebar: {
            ZStack {
                listView()
            }
            .navigationTitle(viewModel.title)
        }, detail: {
            if selected != nil {
                CustomDummyView(title: selected!.viewName)
            } else {
                CustomDummyView()
            }
        })
        .tint(.customAccent)
    }
    
    private func listView() -> some View {
        List(selection: $selected) {
            ForEach(viewModel.data, id: \.id) { section in
                sectionView(section)
            }
        }
        .scrollBounceBehavior(.basedOnSize)
        //.listStyle(InsetListStyle())
        //.listStyle(PlainListStyle())
        //.listStyle(SidebarListStyle())
        //.listStyle(GroupedListStyle())
        .listStyle(InsetGroupedListStyle())
        .tint(.customControl)
        .scrollContentBackground(.hidden)
        .background {
            LinearGradient(
                gradient: colScheme == ColorScheme.light ? Constants.shared.gradient5 : Constants.shared.gradient4,
                startPoint: .topLeading,
                endPoint: .bottomTrailing).blur(radius: 120, opaque: false)
            .ignoresSafeArea(.all)
        }
    }
    
    private func sectionView(_ section: ViewsCollectionSectionItem) -> some View {
        Section(header: Text(section.title)) {
            ForEach(section.collectionItem, id:\.id) { item in
                NavigationLink(value: item) {
                    LinearGradient(
                        colors: [gradCol.opacity(0.75), gradCol.opacity(0.125)],
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                    .mask(alignment: .leading) {
                        Text(item.title)
                            .fontWeight(.bold)
                            //.font(.system(size: 24))
                    }
                    //Text(item.title)
                }
                //.listRowSeparator(.hidden)
                //.frame(height: 42)
            }
        }
        .headerProminence(.increased)
        //.listSectionSeparator(.hidden)
        //.listSectionSeparatorTint(.white)
        //.listRowSeparator(.hidden)
        //.listRowSeparatorTint(.white)
    }
    
}

#Preview {
    GenericSectionListView(viewModel: GenericSectionListViewModel(title: "Single List View", data: MockData1.sectionListData))
}

