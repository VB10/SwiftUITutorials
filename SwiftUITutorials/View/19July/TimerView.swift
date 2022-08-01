//
//  TimerView.swift
//  SwiftUITutorials
//
//  Created by Veli Bacik on 19.07.2022.
//

import SwiftUI


//SubsciribvitonView
struct TimerView: View {

    @State private var timeText: String = "vb"
    @State private var color: Color = Color.red
    @State private var colorValue: Int = 0

    private let timer = Timer.publish(every: 1.0, on: .main, in: .common).autoconnect()
    
    private var colorIsOdd: Bool {
        return ((colorValue % 2) != 0)
    }

    var body: some View {
        VStack {
            Text("\(colorValue % 2)")
            SubscriptionView(content: Text(timeText), publisher: timer) { time in
                timeText = String(describing: time)
                colorValue += 1
                print(colorValue / 2)

            }
            
//            Text(timer).onReceive(timer) { time in
//                
//            }
        }.background(colorIsOdd ? Color.red : Color.blue)
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
