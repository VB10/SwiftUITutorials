//
//  WelcomeView.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 2.08.2022.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        Text(LocaleKeys.welcome.rawValue)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView().environment(\.locale, .init(identifier: ProjectLanguages.tr.rawValue))
    }
}
