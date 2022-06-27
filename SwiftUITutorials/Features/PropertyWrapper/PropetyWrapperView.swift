//
//  PropetyWrapperView.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 28.06.2022.
//

import SwiftUI

struct PropetyWrapperView: View {

   @State var userWrapperModel: UserWrapperModel = UserWrapperModel(name: "v", lastName: "b",age: "veli")

    var body: some View {
        VStack {
            Text(userWrapperModel.fullName)
                .font(.largeTitle)
            TextField("", text: $userWrapperModel.lastName)
            TextField("Number", text: $userWrapperModel.age)
        }
    }
}

struct PropetyWrapperView_Previews: PreviewProvider {
    static var previews: some View {
        PropetyWrapperView()
    }
}
