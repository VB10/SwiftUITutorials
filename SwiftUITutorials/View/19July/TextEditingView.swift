//
//  TextEditingView.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 19.07.2022.
//

import SwiftUI

struct TextEditingView: View {
    @State private var editorValue: String = "👻hello"

    var body: some View {
        VStack {
            TextEditor(text: $editorValue)
                .frame(width: 200, height: 200, alignment: .leading)
                .lineLimit(2).padding().background(Color.green)
        }
    }
}

struct TextEditingView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditingView()
    }
}
