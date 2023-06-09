//
//  ContentView.swift
//  Hacker News
//
//  Created by Utsav Patel on 08/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            List(posts){ post in
                Text(post.title)
            }
            .navigationBarTitle("Hacker News")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


