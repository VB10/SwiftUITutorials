//
//  FoxService.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 2.05.2022.
//

import Foundation
import Alamofire

protocol IFoxService {

    func fetchItem(path: FoxPaths, onSuccess: @escaping (FoxModel, Bool) -> Void)
}

class FoxService: IFoxService {
    private let baseUrl: String = "https://randomfox.ca/"

    func fetchItem(path: FoxPaths, onSuccess: @escaping (FoxModel, Bool) -> Void) {
        AF.request(baseUrl + path.rawValue).responseDecodable(of: FoxModel.self, completionHandler: { response in
            guard let value = response.value else { return }
            onSuccess(value, true)
        })
    }
}


enum FoxPaths: String {
    case floof = "floof"
}
