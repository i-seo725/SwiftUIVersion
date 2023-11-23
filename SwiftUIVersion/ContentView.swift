//
//  ContentView.swift
//  SwiftUIVersion
//
//  Created by 이은서 on 11/23/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            /*
            if #available(iOS 15.0, *) { //iOS15 이상 대응
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.red)  //iOS15+
            } else {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.red)  //iOS15+
            }
             */
            Image(systemName: "globe")
                .imageScale(.large)
                .foreground(.red) // 버전 관리
            
            Text("Hello, world!")
                .asPointBackgroundText()
            Text("Hello, eunseo!")
                .asPointBackgroundText()
            Text("Hello, swift!")
                .asPointBackgroundText()
            
            Button(action: {
                
            }, label: {
                Text("Button")
                    .font(.largeTitle)
                    .bold()
                    .foreground(.green)
                
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
