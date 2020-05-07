//
//  ContentView.swift
//  SppedOMeter
//
//  Created by Alexander Römer on 07.05.20.
//  Copyright © 2020 Alexander Römer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let colors = [Color("Color"),Color("Color1")]
    @State var progress : CGFloat = 0
    
    var body: some View {
        VStack{
            Meter(progress: self.$progress)
            HStack(spacing: 25) {
                Button(action: {
                    withAnimation(Animation.default.speed(0.55)) {
                        self.progress += 10
                    }
                }) {
                    Text("Update")
                        .padding(.vertical,10)
                        .frame(width: (UIScreen.main.bounds.width - 50) / 2)
                }
                .background(Capsule().stroke(LinearGradient(gradient: .init(colors: self.colors), startPoint: .leading, endPoint: .trailing), lineWidth: 2))
                
                Button(action: {
                    withAnimation(Animation.default.speed(0.55)) {
                        self.progress = 0
                    }
                }) {
                    Text("Reset")
                        .padding(.vertical,10)
                        .frame(width: (UIScreen.main.bounds.width - 50) / 2)
                }
                .background(Capsule().stroke(LinearGradient(gradient: .init(colors: self.colors), startPoint: .leading, endPoint: .trailing), lineWidth: 2))
            }
            .padding(.top, 55)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
