//
//  ModelListView.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 25.10.2021.
//

import SwiftUI

struct ModelListView: View {
    var body: some View {
        VStack {
            Text("Welcome List")
                .font(.largeTitle)
            .fontWeight(.light)
            
            List(TweetModel.tweets) { data in
                TweetCards(tweet: data)
            }.listStyle(.sidebar)
        }
       
    }
}

struct ModelListView_Previews: PreviewProvider {
    static var previews: some View {
        ModelListView()
    }
}


// User name
// Body
// Like
