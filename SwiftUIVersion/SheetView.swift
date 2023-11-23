//
//  SheetView.swift
//  SwiftUIVersion
//
//  Created by 이은서 on 11/24/23.
//

import SwiftUI

struct SheetView: View {
    
    @State private var showSheet = false
    
    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()
            VStack {
                ShareLink(item: URL(string: "https://www.naver.com")!) {
                    Text("link share")
                }
                
                
                
                Text("Hello, World!")
                    .wrapToButton {
                        showSheet = true
                }
            }
        }
        .sheet(isPresented: $showSheet, content: {
            Text("Test")
                .presentationDetents([.medium, .large])
//                .presentationDragIndicator(.hidden)
        })
    }
}

extension PresentationDetent {
    static let small = Self.height(200)
}


#Preview {
    SheetView()
}
