//
//  View+Style.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 2.08.2022.
//

import Foundation
import SwiftUI

extension View {
    
    func titleStyle() -> some View {
        self.modifier(AppTitle(isShadowHight: false))
    }
}
