//
//  TabBadgeView.swift
//  SwiftUIVersion
//
//  Created by 이은서 on 11/23/23.
//

import SwiftUI

struct TabBadgeView: View {
    var body: some View {
        TabView {
            ForEach(TabItem.allCases, id: \.hashValue) { item in
                item.rootView
                    .tabItem { item.image }
            }
        }
//        .tabViewStyle(.page)
    }
}

extension TabBadgeView {
    
    private enum TabItem: CaseIterable {
        case home
        case favorite
        case chat
        case setting
        
        var image: Image {  //TabItem의 이미지
            switch self {
            case .home:
                Image(systemName: "house")
            case .favorite:
                Image(systemName: "star")
            case .chat:
                Image(systemName: "character.bubble")
            case .setting:
                Image(systemName: "gear")
            }
        }
        
        @ViewBuilder // 조건문으로 썸 뷰 반환하게 할 때 사용
        var rootView: some View { //왜 some View인지는 79회차 강의자료 참고
            switch self {
            case .home:
                ZStack {
                    Color.green
                    Text("HOME VIEW")
                        .bold()
                }
            case .favorite:
                ContentView()
            case .chat:
                ZStack {
                    Color.yellow
                    Text("VIEW")
                }
            case .setting:
                ZStack {
                    Color.orange
                    Text("MY VIEW")
                }
            }
        }
    }
    
}


#Preview {
    TabBadgeView()
}

