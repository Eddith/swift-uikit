//
//  PostView.swift
//  SocialClub
//
//  Created by Ali Koçman on 18.03.2020.
//  Copyright © 2020 Ali Koçman. All rights reserved.
//

import UIKit

final class PostView: UITableViewCell {
    
    private let containerView = UIView()
    
    private let userImage = UIImageView()
    private let userName = UILabel()
    private let userUniversity = UILabel()
    
    private let postImage = UIImageView()
    private let likeImage = UIImageView()
    private let commentImage = UIImageView()
    private let likeLabel = UILabel()
    private let likeCount = UILabel()
    
    private let commentUserName = UILabel()
    private let commetDetailText = UITextView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK: - Public
    
    func set(model: PostModel) {
        userImage.image = model.profilImage
        userName.text = model.user
        userUniversity.text = model.university
        postImage.image = model.postImage
        likeImage.image = model.likeImage
        commentImage.image = model.commentImage
        likeCount.text = model.like
        commentUserName.text = model.commentModel.commentUser
        commetDetailText.text = model.commentModel.commentDetail
    }
    
    
    // MARK: - Private
    
    private func setupView() {
        setupContainerView()
        setupuserImage()
        setupUserName()
        setupUserUniversity()
        setupPostImage()
        setupLikeImage()
        setupCommentImage()
        setupLikeLabel()
        setupLikeCountLabel()
        setupCommentUserName()
        setupCommentDetailText()
    }
    
    private func setupContainerView() {
        addSubview(containerView)
        
        containerView.translatesAutoresizingMaskIntoConstraints = false
        let top = containerView.topAnchor.constraint(equalTo: topAnchor)
        let height = containerView.heightAnchor.constraint(equalToConstant: 450)
        let leading = containerView.leadingAnchor.constraint(equalTo: leadingAnchor)
        let trailing = containerView.trailingAnchor.constraint(equalTo: trailingAnchor)
        NSLayoutConstraint.activate([top, height, leading, trailing])
    }
    
    private func setupuserImage() {
        containerView.addSubview(userImage)
    
        userImage.translatesAutoresizingMaskIntoConstraints = false
        let top = userImage.topAnchor.constraint(equalTo: topAnchor, constant: 25)
        let leading = userImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15)
        let width = userImage.widthAnchor.constraint(equalToConstant: 60)
        let height = userImage.heightAnchor.constraint(equalToConstant: 60)
        NSLayoutConstraint.activate([top, leading, width, height])
        
        userImage.image = UIImage(named: "ali")
        userImage.layer.masksToBounds = false
        userImage.layer.cornerRadius = 30
        userImage.clipsToBounds = true
    }
    
    private func setupUserName() {
        containerView.addSubview(userName)
        
        userName.translatesAutoresizingMaskIntoConstraints = false
        let top = userName.topAnchor.constraint(equalTo: userImage.topAnchor, constant: 5)
        let leading = userName.leadingAnchor.constraint(equalTo: userImage.leadingAnchor, constant: 75)
        NSLayoutConstraint.activate([top, leading])
        
        userName.text = "alikocman"
        userName.textColor = .black
        userName.font = .boldSystemFont(ofSize: 20)
    }
    
    private func setupUserUniversity() {
        containerView.addSubview(userUniversity)
        
        userUniversity.translatesAutoresizingMaskIntoConstraints = false
        let top = userUniversity.topAnchor.constraint(equalTo: userImage.topAnchor, constant: 35)
        let leading = userUniversity.leadingAnchor.constraint(equalTo: userImage.leadingAnchor, constant: 75)
        NSLayoutConstraint.activate([top, leading])
        
        userUniversity.text = "İstanbul Ayvansaray Üniversitesi"
        userUniversity.textColor = .gray
        userUniversity.font = .boldSystemFont(ofSize: 15)
    }
    
    private func setupPostImage() {
        containerView.addSubview(postImage)
    
        postImage.translatesAutoresizingMaskIntoConstraints = false
        let top = postImage.topAnchor.constraint(equalTo: topAnchor, constant: 105)
        let width = postImage.widthAnchor.constraint(equalToConstant: 373)
        let height = postImage.heightAnchor.constraint(equalToConstant: 230)
        NSLayoutConstraint.activate([top, width, height])
        
        postImage.image = UIImage(named: "londonbridge")
    }
    
    private func setupLikeImage() {
        containerView.addSubview(likeImage)
    
        likeImage.translatesAutoresizingMaskIntoConstraints = false
        let top = likeImage.topAnchor.constraint(equalTo: postImage.topAnchor, constant: 250)
        let leading = likeImage.leadingAnchor.constraint(equalTo: postImage.leadingAnchor, constant: 5)
        let width = likeImage.widthAnchor.constraint(equalToConstant: 32)
        let height = likeImage.heightAnchor.constraint(equalToConstant: 27)
        NSLayoutConstraint.activate([top, leading, width, height])
        
        likeImage.image = UIImage(named: "hearth")
    }
    
    private func setupCommentImage() {
        containerView.addSubview(commentImage)
    
        commentImage.translatesAutoresizingMaskIntoConstraints = false
        let top = commentImage.topAnchor.constraint(equalTo: postImage.topAnchor, constant: 250)
        let leading = commentImage.leadingAnchor.constraint(equalTo: likeImage.leadingAnchor, constant: 45)
        let width = commentImage.widthAnchor.constraint(equalToConstant: 32)
        let height = commentImage.heightAnchor.constraint(equalToConstant: 27)
        NSLayoutConstraint.activate([top, leading, width, height])
        
        commentImage.image = UIImage(named: "comment")
    }
    
    private func setupLikeLabel() {
        containerView.addSubview(likeLabel)
        
        likeLabel.translatesAutoresizingMaskIntoConstraints = false
        let top = likeLabel.topAnchor.constraint(equalTo: postImage.topAnchor, constant: 252)
        let leading = likeLabel.leadingAnchor.constraint(equalTo: commentImage.leadingAnchor, constant: 45)
        NSLayoutConstraint.activate([top, leading])
        
        likeLabel.text = "Like"
        likeLabel.textColor = .black
        likeLabel.font = .boldSystemFont(ofSize: 20)
    }
    
    private func setupLikeCountLabel() {
        containerView.addSubview(likeCount)
        
        likeCount.translatesAutoresizingMaskIntoConstraints = false
        let top = likeCount.topAnchor.constraint(equalTo: postImage.topAnchor, constant: 252)
        let leading = likeCount.leadingAnchor.constraint(equalTo: likeLabel.leadingAnchor, constant: 44)
        NSLayoutConstraint.activate([top, leading])
        
        likeCount.text = "1.000"
        likeCount.textColor = .black
        likeCount.font = .boldSystemFont(ofSize: 20)
    }
    
    private func setupCommentUserName() {
        containerView.addSubview(commentUserName)
        
        commentUserName.translatesAutoresizingMaskIntoConstraints = false
        let top = commentUserName.topAnchor.constraint(equalTo: likeImage.topAnchor, constant: 40)
        let leading = commentUserName.leadingAnchor.constraint(equalTo: leadingAnchor)
        NSLayoutConstraint.activate([top, leading])
        
        commentUserName.text = "supermennn"
        commentUserName.textColor = .red
        commentUserName.font = .boldSystemFont(ofSize: 16)
    }
    
    private func setupCommentDetailText() {
        containerView.addSubview(commetDetailText)
        
        commetDetailText.translatesAutoresizingMaskIntoConstraints = false
        let top = commetDetailText.topAnchor.constraint(equalTo: likeImage.topAnchor, constant: 34)
        let leading = commetDetailText.leadingAnchor.constraint(equalTo: commentUserName.leadingAnchor, constant: 110)
        let width = commetDetailText.widthAnchor.constraint(equalToConstant: 270)
        let height = commetDetailText.heightAnchor.constraint(equalToConstant: 50)
        NSLayoutConstraint.activate([top, leading, width, height])
        
        commetDetailText.text = "Lorem Ipsum, dizgi ve baskı bilinmeyen bir bilinmeyen bir matbaacının"
        commetDetailText.textAlignment = .left
        commetDetailText.textColor = .black
        commetDetailText.font = .boldSystemFont(ofSize: 13)
    }
    
}
