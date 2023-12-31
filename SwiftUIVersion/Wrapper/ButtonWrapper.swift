//
//  ButtonWrapper.swift
//  SwiftUIVersion
//
//  Created by 이은서 on 11/23/23.
//

import SwiftUI

private struct ButtonWrapper: ViewModifier {
    
    let action: () -> Void
    
    func body(content: Content) -> some View {
        Button(action: action, label: { content })
            .buttonStyle(.plain)
    }
}


extension View {
    func wrapToButton(action: @escaping () -> Void) -> some View {
        modifier(ButtonWrapper(action: action))
    }
}
