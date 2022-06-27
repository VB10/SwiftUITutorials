//
//  Logging_AFError.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 31.05.2022.
//

import Foundation
import Alamofire
import Logging

extension AFError {
    private static let logger = Logger(label: "")

    func showError() {
        AFError.logger.error("\(errorDescription?.description)")
    }
}
