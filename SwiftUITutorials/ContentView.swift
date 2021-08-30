//
//  ContentView.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 23.08.2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        sampleStackView()
    }
        
    
    fileprivate func sampleHorizontalView() -> some View {
        return HStack{
            Spacer().frame(width: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text("@vb10")
                .padding()
            Text("@vb10")
                .padding()
            Text("@vb10")
                .padding()
            Text("@vb10")
                .padding()
            Color.red
            Spacer().frame(width: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
    }
    
    fileprivate func sampleVerticalView() -> some View {
        return VStack{
            Spacer().frame(width: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text("@vb10")
                .padding()
            Text("@vb10")
                .padding()
            Text("@vb10")
                .padding()
            Text("@vb10")
                .padding()
            Color.red
            Spacer().frame(width: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
    }
    
    fileprivate func sampleStackView() -> some View {
        return ZStack(alignment: Alignment.bottom){
            Color.red
            Spacer().frame(width: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text("@vb10")
                .padding()
            Text("@vb10")
                .padding()
            Text("@v")
                .padding()
            Spacer().frame(width: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
