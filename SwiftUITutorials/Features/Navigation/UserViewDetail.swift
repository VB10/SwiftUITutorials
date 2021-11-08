//
//  UserViewDetail.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 8.11.2021.
//

import SwiftUI

struct UserViewDetail: View {
    let user: NavigationUserModel
    
    var body: some View {
        Text(user.name).font(.largeTitle)
    }
}

struct UserViewDetail_Previews: PreviewProvider {
    static var previews: some View {
        UserViewDetail(user: NavigationUserModel.samples.first!)
    }
}
