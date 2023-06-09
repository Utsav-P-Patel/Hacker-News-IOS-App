//
//  PostData.swift
//  Hacker News
//
//  Created by Utsav Patel on 09/06/23.
//

import Foundation


struct Results: Decodable {
    let hits: [Post]
}


struct Post: Decodable,  Identifiable {
    var id: String{
        return objectID
    }
    let points: Int
    let title: String
    let url: String?
    let objectID: String
    let author: String?
}
