//
//  Post.swift
//  Instagram
//
//  Created by Shakhzod Ilkhomov on 13/03/21.
//

import Foundation

class Post{
    

    var user_img: String? = ""
    var fullName: String? = ""
    var time: String? = ""
    
    var post_img: String? = ""
    var likes: Int = 0
    var post_content: String? = ""
    
    init(user_img:String, fullName: String, time: String, post_img: String, likes:Int, post_content: String) {
        self.user_img = user_img
        self.fullName = fullName
        self.time = time
        self.post_img = post_img
        self.likes = likes
        self.post_content = post_content
    }
}
