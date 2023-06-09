//
//  DetailView.swift
//  Hacker News
//
//  Created by Utsav Patel on 09/06/23.
//

import SwiftUI

struct DetailView: View {
    
    var url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

