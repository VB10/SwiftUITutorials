//
//  ContentView.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 23.08.2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack(alignment: .center){
            Rectangle().frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Circle().foregroundColor(.red).frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text("Sampole1")
            Text("Sampole2")
            Text("Sampole3")
            Spacer()
            HStack(){
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                ZStack{
                    Circle()
                    Text("hello").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0))
                }.frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
               
            }.frame(height: 500,alignment: Alignment.top)
        }
        
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
