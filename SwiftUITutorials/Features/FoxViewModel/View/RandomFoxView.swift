//
//  RandomFoxView.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 2.05.2022.
//

import SwiftUI
import Kingfisher
import ActivityIndicatorView

struct RandomFoxView: View {
    private let title: String = "My fox"
    @StateObject private var foxViewModel: FoxViewModel = FoxViewModel(service: FoxService())


    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .font(.largeTitle)
                Spacer()
                Button("Refresh") {
                    foxViewModel.refreshView()
                }
            }.padding(.all)

            if foxViewModel.isCompleted ?? false {
                ExtractedView(imageUrl: foxViewModel.fox?.image)
            } else {
                LoadingView()
            }

            Spacer()
        }
    }
}

struct RandomFoxView_Previews: PreviewProvider {
    static var previews: some View {
        RandomFoxView()
    }
}


struct LoadingView: View {

    var body: some View {
        VStack {
            ActivityIndicatorView(isVisible: .constant(true), type: .growingCircle).frame(width: 50, height: 50, alignment: .center)
        }
    }

}

struct ExtractedView: View {
    let imageUrl: String?
    var body: some View {
        GeometryReader { geometry in
            KFImage(URL(string: imageUrl ?? ""))
                .resizable()
                .frame(height: geometry.size.height * 0.4, alignment: .center)
        }
    }
}
