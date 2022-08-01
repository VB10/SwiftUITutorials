//
//  LabelView.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 19.07.2022.
//

import SwiftUI

struct LabelView: View {
    var body: some View {
        VStack {
            Label("Heart asdasd ", systemImage: Hearts.heartCircle.rawValue).labelStyle(DefaultLabelStyle())
            Label("Heart2 asd asd", systemImage: Hearts.heartCircleFill.rawValue).labelStyle(IconOnlyLabelStyle())
            Label("Heart3 xxxx", systemImage: Hearts.heartCircleFill.rawValue).labelStyle(TitleOnlyLabelStyle())
        }
    }
}

enum Hearts: String {
    case heartCircle = "heart.circle"
    case heartCircleFill = "suit.heart.fill"
    case heartCircleSuit = "heart.circle.fill"
}


struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView()
    }
}

