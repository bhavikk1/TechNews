//
//  PostData.swift
//  TechNews
//
//  Created by Bhavik Kothari on 2020-05-24.
//  Copyright © 2020 Bhavik Kothari. All rights reserved.
//

import Foundation

struct Results: Codable{
    let hits: [Post]
}

struct Post: Codable, Identifiable{
    var id:  String{
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
    
}
