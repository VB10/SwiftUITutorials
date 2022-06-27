//
//  NavigationUserModel.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 8.11.2021.
//

import Foundation

struct NavigationUserModel: Identifiable {
    let id: UUID = UUID()
    let name: String
}


extension NavigationUserModel {
    
    /// Samples navigation user model
    static let samples: [NavigationUserModel] = [
        NavigationUserModel(name: "V"),
        NavigationUserModel(name: "V1"),
        NavigationUserModel(name: "V2"),
        NavigationUserModel(name: "V3")
    ]
}
