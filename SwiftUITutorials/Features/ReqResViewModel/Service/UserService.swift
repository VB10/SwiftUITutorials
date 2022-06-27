//
//  UserService.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 31.05.2022.
//

import Foundation
import Alamofire

protocol IUserSerivce {

    func fetchUsers() async -> User?
}


struct UserService: IUserSerivce {

    func fetchUsers() async -> User? {
        let request = AF.request(ServicePath.users.toService()).serializingDecodable(User.self)
        let response = await request.response
        response.error?.showError()
        return response.value
    }

}


private enum ServicePath: String {
    case users = "users"

    func toService() -> String {
        return "https://reqres.in/api/\(rawValue)"
    }
}
