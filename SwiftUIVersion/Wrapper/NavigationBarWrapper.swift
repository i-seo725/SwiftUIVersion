//
//  NavigationBarWrapper.swift
//  SwiftUIVersion
//
//  Created by 이은서 on 11/23/23.
//

import SwiftUI

private struct NavigationBarWrapper<Leading: View, Trailing: View>: ViewModifier {
    
    let leading: Leading
    let trailing: Trailing
    
    //조건에 따라 다르게 뷰가 들어갈 수 있어서 ViewBuilder 추가
    init(@ViewBuilder leading: () -> Leading, @ViewBuilder trailing: () -> Trailing) {
        self.leading = leading()
        self.trailing = trailing()
    }
    
    
    func body(content: Content) -> some View {
        
        if #available(iOS 14.0, *) {
            content
                .toolbar {
                    ToolbarItem(placement: .topBarLeading, content: { leading })
                    ToolbarItem(placement: .topBarTrailing, content: { trailing })
                }
        } else {
            content
                .navigationBarItems(leading: leading, trailing: trailing)
        }
        
    }
    
}


extension View {
    func navigationBar(@ViewBuilder leading: () -> some View, @ViewBuilder trailing: () -> some View) -> some View {
        modifier(NavigationBarWrapper(leading: leading, trailing: trailing))
    }
}
