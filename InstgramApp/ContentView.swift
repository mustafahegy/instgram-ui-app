//
//  ContentView.swift
//  InstgramApp
//
//  Created by Mostafa on 08/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            TabView {
                VStack() {
                    Navigation()
                        .padding(.horizontal)
                    StoryList()
                        .padding(.leading)
                    ScrollView(showsIndicators: false) {
                        ForEach(1..<10) { _ in
                            FeedItem()
                        }
                    }
                    Spacer()
                }
                .navigationBarHidden(true)
                .tabItem {
                    Image(Asset.home.name)
                }
                Text("search").tabItem {
                    Image(Asset.search.name)
                }
                Text("reels").tabItem {
                    Image(Asset.reels.name)
                }
                Text("shopping").tabItem {
                    Image(Asset.shop.name)
                }
                Text("profile").tabItem {
                    Image(Asset.meTab.name)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
