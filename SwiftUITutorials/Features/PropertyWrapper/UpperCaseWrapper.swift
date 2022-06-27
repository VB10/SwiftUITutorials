//
//  UpperCaseWrapper.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 28.06.2022.
//

import Foundation

@propertyWrapper struct UpperCaseWrapper {
    var wrappedValue: String {
        didSet {
            wrappedValue = wrappedValue.uppercased()
        }
    }

    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue.uppercased()
    }
}
