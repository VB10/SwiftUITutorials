//
//  Navigaton+View.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 14.06.2022.
//

import Foundation
import SwiftUI

extension View {
    
    func dismiss() {
        @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
        presentationMode.wrappedValue.dismiss()
    }
}
