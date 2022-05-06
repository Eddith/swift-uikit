//
//  CommentBottomView.swift
//  SocialClub
//
//  Created by Ali Koçman on 24.03.2020.
//  Copyright © 2020 Ali Koçman. All rights reserved.
//

import UIKit

final class CommentBottomView: UIView {
    
    private let commentBUI = CommentBottomUserImage()
    private let postText = UITextField()
    private let commentBPB = CommentBottomPostButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        setupPostTextB()
    }
    
    private func setupPostTextB() {
        addSubview(postText)
        
        postText.translatesAutoresizingMaskIntoConstraints = false
        let bottom = postText.bottomAnchor.constraint(equalTo: bottomAnchor)
        let leading = postText.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15)
        let width = postText.widthAnchor.constraint(equalToConstant: 20)
        let height = postText.heightAnchor.constraint(equalToConstant: 20)
        NSLayoutConstraint.activate([bottom, leading, width, height])
        
        postText.placeholder = "Add a comment..."
        postText.leftView = commentBUI
        postText.rightView = commentBPB
    }
}
