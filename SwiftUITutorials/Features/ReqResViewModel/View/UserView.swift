//
//  UserView.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 31.05.2022.
//

import SwiftUI
import Kingfisher

struct UserView: View {
    @StateObject var userViewModel = UserViewModel(userService: UserService())

    var body: some View {
        if userViewModel.user == nil {
            LoadingView()
        } else {
            List(userViewModel.user?.data ?? []) {
                UserExtractedView(model: $0)
            }
        }
    }
}



struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}

struct UserExtractedView: View {
    let model: Datum

    var body: some View {
        HStack {
            KFImage(URL(string: model.avatar ))
                .resizable()
                .frame(width:20, height: 20,
                       alignment: .center)
            Text(model.firstName)
            Text(model.lastName)
        }
    }
}
