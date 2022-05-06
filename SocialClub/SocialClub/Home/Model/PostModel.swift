//
//  PostModel.swift
//  SocialClub
//
//  Created by Ali Koçman on 18.03.2020.
//  Copyright © 2020 Ali Koçman. All rights reserved.
//

import UIKit

struct PostModel {
    let profilImage: UIImage!
    let user: String
    let university: String
    let postImage: UIImage!
    let likeImage: UIImage!
    let commentImage: UIImage!
    let like: String
    let commentModel: CommentModel!
}
