//
//  CircleTextImageView.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 4.10.2021.
//

import SwiftUI
import Kingfisher

struct CircleTextImageView: View {
    let title: String
    let imageUrl: String
    
    var body: some View {
        VStack {
            KFImage(URL(string: imageUrl)!).fade(duration: 0.25) .resizable().clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).shadow(radius: /*@START_MENU_TOKEN@*/22/*@END_MENU_TOKEN@*/)
            Text(title).bold().italic()
        }
    }
}

struct CircleTextImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleTextImageView(title: "Hello", imageUrl: "https://picsum.photos/seed/picsum/200/300").frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).previewLayout(.sizeThatFits)
    }
}
