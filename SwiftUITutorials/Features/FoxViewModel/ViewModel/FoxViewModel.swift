//
//  FoxViewModel.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 2.05.2022.
//

import Foundation

class FoxViewModel: ObservableObject {
    init(service: IFoxService) {
        self.service = service
        fetchFox()
    }

    @Published var fox: FoxModel?
    @Published var isCompleted: Bool?
    private let service: IFoxService


    private func fetchFox() {
        service.fetchItem(path: .floof) { (data, isComplete) in
            self.isCompleted = isComplete
            self.fox = data
        }
    }
    
    func refreshView() {
        isCompleted = false
        fetchFox()
    }

}
