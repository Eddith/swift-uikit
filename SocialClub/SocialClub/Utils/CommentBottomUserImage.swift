//
//  CommentBottomUserImage.swift
//  SocialClub
//
//  Created by Ali Koçman on 24.03.2020.
//  Copyright © 2020 Ali Koçman. All rights reserved.
//

import UIKit

final class CommentBottomUserImage: UIView {
    
    private let userImageB = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        setupUserImageB()
    }
    
    private func setupUserImageB() {
        addSubview(userImageB)
        
        userImageB.translatesAutoresizingMaskIntoConstraints = false
        let top = userImageB.topAnchor.constraint(equalTo: topAnchor, constant: 25)
        let leading = userImageB.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10)
        let width = userImageB.widthAnchor.constraint(equalToConstant: 20)
        let height = userImageB.heightAnchor.constraint(equalToConstant: 20)
        NSLayoutConstraint.activate([top, leading, width, height])
        
        userImageB.image = UIImage(named: "ali")
        userImageB.layer.masksToBounds = false
        userImageB.layer.cornerRadius = 10
        userImageB.clipsToBounds = true
    }
}
