//
//  BadgeWrapper.swift
//  SwiftUIVersion
//
//  Created by 이은서 on 11/23/23.
//

import SwiftUI

private struct BadgeWrapper: ViewModifier {
    
    let count: Int
    
    func body(content: Content) -> some View {
        if #available(iOS 15.0, *) {
            content
                .badge(count)
        } else {
            content
        }
    }
    
}


extension View {
    func badges(_ count: Int) -> some View {
        modifier(BadgeWrapper(count: count))
    }
}
