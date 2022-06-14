//
//  MarketDetailView.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 14.06.2022.
//

import SwiftUI

struct MarketDetailView: View, BaseView {
    @StateObject private var marketDetailVM: MarketDetailViewModel = MarketDetailViewModel()
    @EnvironmentObject var marketVM: MarketViewModel
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        VStack {
            TextField("Name", text: $marketDetailVM.name)
            TextField("Count", text: $marketDetailVM.count)
            Button("Save") {
                saveItem()
            }
        }
    }
}

extension MarketDetailView {
    private func saveItem() {
        let result = marketDetailVM.save()
        guard result.0 == true else { return }
        marketVM.addItem(item: result.1!)
        dismiss()
    }

}

struct MarketDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MarketDetailView()
    }
}

protocol BaseView {
    var presentationMode: Binding<PresentationMode> { get }

    func dismiss();
}

extension BaseView where Self: View {
    func dismiss() {
        presentationMode.wrappedValue.dismiss()
    }
}


