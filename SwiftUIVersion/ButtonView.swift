//
//  ButtonView.swift
//  SwiftUIVersion
//
//  Created by 이은서 on 11/23/23.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        VStack {
            text.wrapToButton {
                print("텍스트 클릭!")
            }
            image.wrapToButton {
                print("이미지 클릭!")
            }
            rectangle.wrapToButton {
                print("사각형 클릭!")
            }
        }
    }
    
    
    var text: some View {
        Text("Hello, World!")
            .padding(30)
            .background(.yellow)
            .foreground(.brown)
            .font(.largeTitle)
            .clipShape(.ellipse)
    }
    
    var image: some View {
        Image(systemName: "person.fill")
            .scaleEffect(2)
            .padding()
    }
    
    var rectangle: some View {
        Rectangle()
            .padding()
            .frame(height: 100)
    }
    
}

#Preview {
    ButtonView()
}
