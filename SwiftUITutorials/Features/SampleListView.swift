//
//  SampleListView.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 11.10.2021.
//

import SwiftUI

struct SampleListView: View {
    
    private let items: Array<String> = [
        "chevron.right",
        "chevron.left",
        "chevron.left",
        "chevron.left"
    ]
    
    var body: some View {
        List{
            Section(header: Text("Sample").font(.largeTitle), content: {
                HStack{
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                
                Text("Hello")
                Text("Hello")
            })
            
            
            HStack{
                Image(systemName: "person.crop.circle")
                Text("Profile")
                Spacer()
                Image(systemName: "chevron.right")
            }
            
            Text("Hello")
            HStack{
                ForEach(items,id: \.self) { (item) in
                    Image(systemName: item)
                }
            }
            
            
        }
        .listStyle(GroupedListStyle.init())
    }
}

struct SampleListView_Previews: PreviewProvider {
    static var previews: some View {
        SampleListView()
    }
}


//
