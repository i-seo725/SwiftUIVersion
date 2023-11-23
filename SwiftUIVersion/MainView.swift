//
//  MainView.swift
//  SwiftUIVersion
//
//  Created by 이은서 on 11/23/23.
//

import SwiftUI

struct MainView: View {
    
    var sampleTest = false
    
    var body: some View {
        
        NavigationWrapper {
            Text("eunseo")
            sample
                .navigationTitle("메인")
                .navigationBar {
                    Image(systemName: "heart")
                } trailing: {
                    Text("Hi")
                }

        }
            
    }
    
    @ViewBuilder
    var sample: some View {
        if sampleTest {
            Text("안녕하세여")
        } else {
            Text("반갑습니다")
        }
    }
}

#Preview {
    MainView()
}
