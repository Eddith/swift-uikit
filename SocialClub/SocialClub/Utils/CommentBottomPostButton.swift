//
//  CommentBottomPostButton.swift
//  SocialClub
//
//  Created by Ali Koçman on 24.03.2020.
//  Copyright © 2020 Ali Koçman. All rights reserved.
//

import UIKit

final class CommentBottomPostButton: UIView {
    
    private let postButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        setupPostButton()
    }
    
    private func setupPostButton() {
        addSubview(postButton)
        
        postButton.translatesAutoresizingMaskIntoConstraints = false
        let top = postButton.topAnchor.constraint(equalTo: topAnchor, constant: 10)
        let leading = postButton.leadingAnchor.constraint(equalTo: leadingAnchor)
        let trailing = postButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 15)
        NSLayoutConstraint.activate([top, leading, trailing])
        
        postButton.setTitle("Add Post", for: .normal)
        postButton.tintColor = .red
    }
    
}
