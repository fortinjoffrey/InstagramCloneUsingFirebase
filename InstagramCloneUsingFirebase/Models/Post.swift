//
//  Post.swift
//  InstagramCloneUsingFirebase
//
//  Created by Joffrey Fortin on 28/07/2020.
//  Copyright © 2020 Joffrey Fortin. All rights reserved.
//

import Foundation

struct Post {
    var id: String?
    let user: User
    let imageUrl: String
    let caption: String
    let creationDate: Date
    
    var hasLiked: Bool = false
    
    init(user: User, dictionary: [String: Any]) {
        self.user = user
        self.imageUrl = dictionary["imageUrl"] as? String ?? ""
        self.caption = dictionary["caption"] as? String ?? ""
        
        let secondsFrom1970 = dictionary["creationDate"] as? Double ?? 0
        self.creationDate = Date(timeIntervalSince1970: secondsFrom1970)
    }
}
