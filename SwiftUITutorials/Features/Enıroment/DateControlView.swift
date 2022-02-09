//
//  DateControlView.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 9.02.2022.
//

import SwiftUI

struct DateControlView: View {
    @EnvironmentObject var userController: UserController
    
    var body: some View {
        Text(userController.currentDate.timeIntervalSince1970.description)
       Button("Date Reset") {
           if #available(iOS 15, *) {
               userController.currentDate = Date.now
           } else {
               // Fallback on earlier versions
           }
        }
    }
}

struct DateControlView_Previews: PreviewProvider {
    static var previews: some View {
        DateControlView()
    }
}
