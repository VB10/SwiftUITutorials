//
//  UserViewModel.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 31.05.2022.
//

import Foundation


class UserViewModel: ObservableObject {

    init(userService: IUserSerivce) {
        self.userService = userService
        Task.detached {
            await self.fetchWholeItems()
        }
    }

    let userService: IUserSerivce
    @Published var user: User?


    func fetchWholeItems() async {
        user = await userService.fetchUsers()
    }

}
