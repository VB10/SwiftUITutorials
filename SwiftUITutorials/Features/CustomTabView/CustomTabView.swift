//
//  CustomTabView.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 20.12.2021.
//

import SwiftUI

struct CustomTabView: View {

    @State private var selectedIndex = CustomTabs.home
        
    var body: some View {
        VStack {
            Button("Reset") {
                selectedIndex = CustomTabs.home
            }
            TabView(selection: $selectedIndex) {
                HeartView().tabItem {
                    Image(systemName: "heart")
                    Text("Tab Label 1") }.tag(CustomTabs.home)

                StarView().tabItem {
                    Image(systemName: "star")
                    if selectedIndex == CustomTabs.heart {
                        Text("Tab Label 2")
                    }
                }.tag(CustomTabs.heart)
            }.accentColor(.red)
        }
    }
}


struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}

struct StarView: View {
    var body: some View {
        Text("Tab Content 2")
    }
}

struct HeartView: View {
    @State private var fruits = [
        "Apple",
        "Banana",
        "Papaya",
        "Mango"
    ]

    var body: some View {
        NavigationView{
            VStack {
                NavigationLink(destination: Text("sample")) {
                    Label("Lightning", systemImage: "bolt.fill")
                }

                List {
                     ForEach(
                         fruits,
                         id: \.self
                     ) { fruit in
                         Text(fruit)
                     }
    //                 .onDelete { self.deleteFruit(at :$0) }
    //                 .onMove { self.moveFruit(from: $0, to: $1) }
                 }
                 .navigationTitle("Fruits")
             .toolbar { EditButton() }
            }
         }
    }
}
