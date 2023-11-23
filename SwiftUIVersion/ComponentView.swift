//
//  ComponentView.swift
//  SwiftUIVersion
//
//  Created by 이은서 on 11/24/23.
//

import SwiftUI

struct ComponentView: View {
    
    @State var selectedIndex = 3
    
    let apple = ["iOS", "iPadOS", "macOS", "watchOS", "visionOS"]
    
    var body: some View {
        
        List {
            Section {
                Picker(selection: $selectedIndex) {
                    ForEach(apple, id: \.self) { item in
                        Text(item)
                    }
                } label: {
                    Text("Apple")
                }
            .pickerStyle(.menu)
            }
            
            Section {
                Picker(selection: $selectedIndex) {
                    ForEach(apple, id: \.self) { item in
                        Text(item)
                    }
                } label: {
                    Text("Apple")
                }
            .pickerStyle(.menu)
            }
        }
    }
}

#Preview {
    ComponentView()
}
