//
//  TweetCards.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 25.10.2021.
//

import SwiftUI

struct TweetCards: View {
    let tweet: TweetModel

    var body: some View {

        VStack(alignment: .leading) {
            Spacer()
            Text(tweet.userName).font(.title)
            Text("\(tweet.body)").font(.title3)

            if tweet.likeCount != nil {
                HStack {
                    Text("\(tweet.likeCount!)").fontWeight(.light)
                    Image(systemName: "heart.circle.fill").foregroundColor(.pink)
                    Spacer()

                }
            }
            Spacer()



        }.padding(2).frame(height: 100, alignment: .top)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(.red, lineWidth: 2)).padding(2)
    }
}

struct TweetCards_Previews: PreviewProvider {
    static var previews: some View {
        TweetCards(tweet: TweetModel.fakeTweet).previewLayout(.sizeThatFits)
    }
}
