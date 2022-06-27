//
//  EnviromentView.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 9.02.2022.
//

import SwiftUI
//EnvironmentValues
struct EnviromentView: View {
    @Environment(\.horizontalSizeClass) var verticalSize
    @StateObject var userController = UserController()
    
    var body: some View {
        NavigationView {
            VStack {
                Text(userController.currentDate.description)
                HStack {
                    verticalSize == .regular ?  Spacer.minVerticalHigh :  Spacer.minVertical
                    DatePicker(selection: $userController.currentDate, label: { Text("Date") })
                    verticalSize == .regular ?  Spacer.minVerticalHigh :  Spacer.minVertical

                }
                
                NavigationLink {
                    DateControlView()
                } label: {
                    Text("Normal View")
                }

            }
        }.environmentObject(userController)
    }
}

class UserController: ObservableObject {
    @Published var currentDate: Date = Date()
}

struct EnviromentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            EnviromentView()
            if #available(iOS 15.0, *) {
                EnviromentView()
                    .previewInterfaceOrientation(.landscapeLeft)
            } else {
                // Fallback on earlier versions
            }
        }
    }
}


