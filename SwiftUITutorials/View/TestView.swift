//
//  TestView.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 2.08.2022.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        Text("welcome")
            .bold()
            .modifier(CustomTile())
    }
}

struct CustomTile: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.red)
            .shadow(radius: 2.0)
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
