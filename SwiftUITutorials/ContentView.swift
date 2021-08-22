//
//  ContentView.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 23.08.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct HelloView: View {
    var body : some View {
        Image.init(systemName: "square.and.arrow.up")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HelloView()
    }
}
