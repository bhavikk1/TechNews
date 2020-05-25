//
//  ContentView.swift
//  TechNews
//
//  Created by Bhavik Kothari on 2020-05-24.
//  Copyright © 2020 Bhavik Kothari. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts) { post in
                HStack{
                    Text(String(post.points))
                    Text(post.title)
                    
                }
            }
            .navigationBarTitle("Tech NEWS")
            }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


