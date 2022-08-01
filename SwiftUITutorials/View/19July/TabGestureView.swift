//
//  TabGestureView.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 19.07.2022.
//

import SwiftUI

struct TabGestureView: View {
    @State private var isTap: Bool = false

    private var onTap: some Gesture {
        TapGesture(count: 3).onEnded { _ in
            self.isTap = !self.isTap
        }
    }

    var body: some View {
        RoundedRectangle(cornerSize: .init(width: 50, height: 20)).fill(isTap ? Color.red : Color.purple) .frame(width: 200, height: 200, alignment: .center).gesture(onTap)
    }
}

struct TabGestureView_Previews: PreviewProvider {
    static var previews: some View {
        TabGestureView()
    }
}
