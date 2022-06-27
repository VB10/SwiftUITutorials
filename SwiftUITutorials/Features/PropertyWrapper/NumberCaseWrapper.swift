//
//  NumberCaseWrapper.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 28.06.2022.
//

import Foundation

@propertyWrapper struct NumberCaseWrapper {
    var wrappedValue: String {
        didSet {
            self.wrappedValue = calculateValue(value: wrappedValue)
        }
    }

    init(wrappedValue: String) {
        self.wrappedValue = Int(wrappedValue)?.description ?? ""
    }
    
    private func calculateValue(value: String) -> String {
        return Int(value)?.description ?? ""
    }
}
