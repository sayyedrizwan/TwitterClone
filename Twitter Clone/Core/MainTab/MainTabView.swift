//
//  MainTabView.swift
//  Twitter Clone
//
//  Created by Sayyed Rizwan on 06/11/22.
//

import SwiftUI

struct MainTabView: View {
    
    @State private var selectedIndex = 0
    
    var body: some View {
        TabView(selection: $selectedIndex){
            FeedView().onTapGesture {
                self.selectedIndex = 0
            }.tabItem{
                Image(systemName: "house")
            }.tag(0)
            
            ExploreView().onTapGesture {
                self.selectedIndex = 1
            }.tabItem{
                Image(systemName: "magnifyingglass")
            }.tag(1)
            
            NotificationView().onTapGesture {
                self.selectedIndex = 2
            }.tabItem{
                Image(systemName: "bell")
            }.tag(2)
            
            MessagesVIew().onTapGesture {
                self.selectedIndex = 3
            }.tabItem{
                Image(systemName: "message")
            }.tag(3)
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
