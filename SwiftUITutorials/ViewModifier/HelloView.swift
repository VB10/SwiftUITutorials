//
//  HelloView.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 2.08.2022.
//

import SwiftUI

struct HelloView: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .bold()
                .modifier(AppTitle(isShadowHight: true))

            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .bold()
                .titleStyle()
        }
    }
}

struct AppTitle: ViewModifier {
    let isShadowHight: Bool

    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
            .shadow(radius: isShadowHight ? Shadows.hight.rawValue : Shadows.normal.rawValue)
    }
}

enum Shadows: Double {
    case normal = 2.0
    case hight = 10.0
}

struct HelloView_Previews: PreviewProvider {
    static var previews: some View {
        HelloView()
    }
}
