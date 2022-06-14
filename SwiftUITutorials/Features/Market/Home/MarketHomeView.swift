//
//  MarketHomeView.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 14.06.2022.
//

import SwiftUI

struct MarketHomeView: View {
    @StateObject private var marketViewModel = MarketViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                List(marketViewModel.items) { item in
                    Text(item.name)
                }
                NavigationLink(destination: MarketDetailView()) {
                    Text("Add Item")
                }
            }
        }.environmentObject(marketViewModel)
    }
}

struct MarketHomeView_Previews: PreviewProvider {
    static var previews: some View {
        MarketHomeView()
    }
}
