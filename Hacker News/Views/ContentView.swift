//
//  ContentView.swift
//  Hacker News
//
//  Created by Utsav Patel on 08/06/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        
        NavigationView{
            List(networkManager.posts){ post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text(post.title)
                                .font(.headline)
                                .multilineTextAlignment(.leading)
                            if let author = post.author {
                                Text("——"+author)
                                    .fontWeight(.light)
                                    .foregroundColor(Color.black)
                                    .multilineTextAlignment(.leading)
                                    .padding(.leading)
                            }
                        }
                        Spacer()
                        Text(String(post.points))
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
            .navigationBarTitle("Hacker News")
        }
        .onAppear{
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


