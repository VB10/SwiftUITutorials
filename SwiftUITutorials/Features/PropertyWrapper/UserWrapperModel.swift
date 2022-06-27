//
//  UserWrapperModel.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 28.06.2022.
//

import Foundation

// Lastname is always bigger
struct UserWrapperModel {
    var name: String
    @UpperCaseWrapper var lastName: String
    @NumberCaseWrapper var age: String

    var fullName: String {
        return "\(name) \(lastName) \(age) "
    }

}
