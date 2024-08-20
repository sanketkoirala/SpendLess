//
//  ContentView.swift
//  SpendLess
//
//  Created by Sanket Koirala on 8/13/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @AppStorage ("isFirstTime") private var isFirstTime: Bool = true
    
    @State private var activeTab: Tab = .recents
    var body : some View {
        TabView (selection: $activeTab) {
            Recents()
                .tag(Tab.recents)
                .tabItem { Tab.recents.tabContent }
            
            Search()
                .tag(Tab.search)
                .tabItem { Tab.search.tabContent }
            
            Graphs()
                .tag(Tab.charts)
                .tabItem { Tab.charts.tabContent }
            
            Setting()
                .tag(Tab.setting)
                .tabItem { Tab.setting.tabContent }
            
            
        }
        .sheet(isPresented: $isFirstTime, content: {
            IntroductionScreen()
                .interactiveDismissDisabled()
        })
    }
}

#Preview {
    ContentView()
        
}
