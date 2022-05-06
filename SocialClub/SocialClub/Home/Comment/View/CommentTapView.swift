//
//  CommentTapView.swift
//  SocialClub
//
//  Created by Ali Koçman on 24.03.2020.
//  Copyright © 2020 Ali Koçman. All rights reserved.
//

import UIKit

final class CommentTapView: UIView {
    
    private let userImageT = UIImageView()
    private let userName = UILabel()
    private let userCommentText = UITextView()
    private let timeLabel = UILabel()
    private let likeLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        setupUserImageT()
        setupCommentTextT()
        setupTimeLabelT()
        setupLikeLabelT()
    }

    private func setupUserImageT() {
        addSubview(userImageT)
    
        userImageT.translatesAutoresizingMaskIntoConstraints = false
        let top = userImageT.topAnchor.constraint(equalTo: topAnchor, constant: 20)
        let leading = userImageT.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5)
        let width = userImageT.widthAnchor.constraint(equalToConstant: 55)
        let height = userImageT.heightAnchor.constraint(equalToConstant: 55)
        NSLayoutConstraint.activate([top, leading, width, height])
        
        userImageT.image = UIImage(named: "ali")
        userImageT.layer.masksToBounds = false
        userImageT.layer.cornerRadius = 27.5
        userImageT.clipsToBounds = true
    }
    
    private func setupCommentTextT() {
        addSubview(userCommentText)

        userCommentText.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            userCommentText.topAnchor.constraint(equalTo: topAnchor, constant: 25),
            userCommentText.leadingAnchor.constraint(equalTo: userImageT.leadingAnchor, constant: 65),
            userCommentText.bottomAnchor.constraint(equalTo: bottomAnchor),
            userCommentText.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0)
        ])
        
        userCommentText.text = "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir."
        userCommentText.textColor = .black
        userCommentText.font = .boldSystemFont(ofSize: 14)

        
        userCommentText.addSubview(userName)

        userName.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            userName.topAnchor.constraint(equalTo: userCommentText.topAnchor, constant: 5),
            userName.leadingAnchor.constraint(equalTo: userCommentText.leadingAnchor, constant: 0),
            userName.bottomAnchor.constraint(equalTo: userCommentText.bottomAnchor, constant: -10),
            userName.trailingAnchor.constraint(equalTo: userCommentText.trailingAnchor, constant: -12)
        ])
        
        userName.text = "alikocmm"
        userName.textColor = .red
        userName.font = .boldSystemFont(ofSize: 20)
    }
    
    private func setupTimeLabelT() {
        addSubview(timeLabel)
        
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        let top = timeLabel.topAnchor.constraint(equalTo: userCommentText.topAnchor, constant: 65)
        let leading = timeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60)
        NSLayoutConstraint.activate([top, leading])
        
        timeLabel.text = "2h"
        timeLabel.textColor = .gray
        timeLabel.font = .boldSystemFont(ofSize: 15)
    }
    
    private func setupLikeLabelT() {
        addSubview(likeLabel)
        
        likeLabel.translatesAutoresizingMaskIntoConstraints = false
        let top = likeLabel.topAnchor.constraint(equalTo: userCommentText.topAnchor, constant: 65)
        let leading = likeLabel.leadingAnchor.constraint(equalTo: timeLabel.leadingAnchor, constant: 40)
        NSLayoutConstraint.activate([top, leading])
        
        likeLabel.text = "4 like"
        likeLabel.textColor = .gray
        likeLabel.font = .boldSystemFont(ofSize: 15)
    }
}
