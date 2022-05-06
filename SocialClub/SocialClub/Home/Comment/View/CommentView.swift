//
//  CommentView.swift
//  SocialClub
//
//  Created by Ali Koçman on 23.03.2020.
//  Copyright © 2020 Ali Koçman. All rights reserved.
//

import UIKit

final class CommentView: UITableViewCell {
    
    private let tapView = CommentTapView()
    
    private let commentUserImage = UIImageView()
    private let commentUsername = UILabel()
    private let commentUserDetail = UITextView()
    private let timeLabel = UILabel()
    private let likeLabel = UILabel()
    
    private let bottomView = CommentBottomView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Public
    
    func set(model: CommentModel) {
        commentUserImage.image = model.userImage
        commentUsername.text = model.commentUser
        commentUserDetail.text = model.commentDetail
        timeLabel.text = model.time
        likeLabel.text = model.commentLike
    }
    
    // MARK: - Private
    
    private func setupView() {
        setupCommentUserImage()
        setupCommentUserDetail()
        setupTimeLabel()
        setupLikeLabel()
    }
    
    private func setupTapView() {
        addSubview(tapView)
        
        tapView.translatesAutoresizingMaskIntoConstraints = false
        let top = tapView.topAnchor.constraint(equalTo: topAnchor, constant: 10)
        let leading = tapView.leadingAnchor.constraint(equalTo: leadingAnchor)
        let bottom = tapView.bottomAnchor.constraint(equalTo: bottomAnchor)
        let trailing = tapView.trailingAnchor.constraint(equalTo: trailingAnchor)
        NSLayoutConstraint.activate([top, leading, bottom, trailing])
    }

    private func setupCommentUserImage() {
        addSubview(commentUserImage)
        
        commentUserImage.translatesAutoresizingMaskIntoConstraints = false
        let top = commentUserImage.topAnchor.constraint(equalTo: topAnchor, constant: 25)
        let leading = commentUserImage.leadingAnchor.constraint(equalTo: leadingAnchor)
        let width = commentUserImage.widthAnchor.constraint(equalToConstant: 40)
        let height = commentUserImage.heightAnchor.constraint(equalToConstant: 40)
        NSLayoutConstraint.activate([top, leading, width, height])
        
        commentUserImage.image = UIImage(named: "ali")
        commentUserImage.layer.masksToBounds = false
        commentUserImage.layer.cornerRadius = 20
        commentUserImage.clipsToBounds = true
    }
    
    private func setupCommentUserDetail() {
        addSubview(commentUserDetail)
        
        commentUserDetail.translatesAutoresizingMaskIntoConstraints = false
        let top = commentUserDetail.topAnchor.constraint(equalTo: topAnchor, constant: 26)
        let leading = commentUserDetail.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 47)
        let bottom = commentUserDetail.bottomAnchor.constraint(equalTo: bottomAnchor)
        let trailing = commentUserDetail.trailingAnchor.constraint(equalTo: trailingAnchor)
        NSLayoutConstraint.activate([top, leading, bottom, trailing])
        
        commentUserDetail.text = "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı"
        commentUserDetail.textAlignment = .left
        commentUserDetail.textColor = .black
        commentUserDetail.font = .boldSystemFont(ofSize: 11)
        commentUserDetail.isEditable = false
        
        commentUserDetail.addSubview(commentUsername)
        
        commentUsername.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            commentUsername.topAnchor.constraint(equalTo: commentUserDetail.topAnchor, constant: 6),
            commentUsername.leadingAnchor.constraint(equalTo: commentUserDetail.leadingAnchor)
        ])
        
        commentUsername.text = "alikocmmann"
        commentUsername.textColor = .black
        commentUsername.font = .boldSystemFont(ofSize: 13)
        
    }
    
    private func setupTimeLabel() {
        addSubview(timeLabel)
        
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        let top = timeLabel.topAnchor.constraint(equalTo: commentUserDetail.topAnchor, constant: 50)
        let leading = timeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 45)
        NSLayoutConstraint.activate([top, leading])
        
        timeLabel.text = "2h"
        timeLabel.textColor = .gray
        timeLabel.font = .boldSystemFont(ofSize: 12)
    }
    
    private func setupLikeLabel() {
        addSubview(likeLabel)
        
        likeLabel.translatesAutoresizingMaskIntoConstraints = false
        let top = likeLabel.topAnchor.constraint(equalTo: commentUserDetail.topAnchor, constant: 50)
        let leading = likeLabel.leadingAnchor.constraint(equalTo: timeLabel.leadingAnchor, constant: 40)
        NSLayoutConstraint.activate([top, leading])
        
        likeLabel.text = "4 like"
        likeLabel.textColor = .gray
        likeLabel.font = .boldSystemFont(ofSize: 12)
    }
    
    private func setupBottomView() {
       addSubview(bottomView)
        
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        let bottom = bottomView.bottomAnchor.constraint(equalTo: bottomAnchor)
        let trailing = bottomView.trailingAnchor.constraint(equalTo: trailingAnchor)
        NSLayoutConstraint.activate([bottom, trailing])
    }
}
