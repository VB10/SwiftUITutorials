//
//  ContentView.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 23.08.2021.
//

import SwiftUI
import Kingfisher


struct IconFieldView: View {
    
    var iconName: String = "hello"
    @State var textFieldValue: String = ""
    
    var body: some View {
        VStack {
            TextField("Placeholder", text: $textFieldValue)
            Text(textFieldValue)
                .bold()
                .font(.largeTitle)
            
            Image(systemName: textFieldValue.lowercased()).frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
        }
    }
    
}


struct ContentView: View {
    
    private let imageUrl: String = "https://picsum.photos/id/237/200/300"
    
    
    var body: some View {
        CircleTextImageView(title: "Kabus", imageUrl: imageUrl).frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }

    
    
    
    
//   Lesson 5
    fileprivate func groupViews() -> some View {
        return VStack {
            
            Group {
                //            MARK: Login View
                //            TODO: Fix user name!
                VStack {
                    Text("Hello")
                        .accentColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .font(/*@START_MENU_TOKEN@*/.callout/*@END_MENU_TOKEN@*/)
                }.frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).background(Color("color_random")
                                                                                                                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/))
            }
            Group {
                //            MARK: Register View
                VStack {
                    Image(systemName: "moon.fill").foregroundColor(.red)
                    Text("Hello2")
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                }
            }
        }
    }


    fileprivate func demoView() -> some View {
        return VStack(alignment: .center) {
            Rectangle().frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Circle().foregroundColor(.red).frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text("Sampole1")
            Text("Sampole2")
            Text("Sampole3")
            Spacer()
            HStack() {
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                ZStack {
                    Circle()
                    Text("hello").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0))
                }.frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

            }.frame(height: 500, alignment: Alignment.top)
        }
    }

    fileprivate func sampleHorizontalView() -> some View {
        return HStack {
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
        return VStack {
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
        return ZStack(alignment: Alignment.bottom) {
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
        EnviromentView()
    }
}
