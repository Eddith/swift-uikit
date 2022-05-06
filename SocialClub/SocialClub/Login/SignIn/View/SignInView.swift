//
//  SignInView.swift
//  SocialClub
//
//  Created by Ali Koçman on 17.03.2020.
//  Copyright © 2020 Ali Koçman. All rights reserved.
//

import UIKit

final class SignInView: UIView {
    private let titleLabel = UILabel()
    
    private let emailText = UITextField()
    private let passwordText = UITextField()
    
    override init(frame: CGRect) {
      super.init(frame: frame)
      setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        setupTitleLabel()
        setupEmailText()
        setupPasswordText()
    }
    
    private func setupTitleLabel() {
        addSubview(titleLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        let top = titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 200)
        let centerX = titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        NSLayoutConstraint.activate([top, centerX])
        
        titleLabel.text = "SocialClub"
        titleLabel.textColor = .red
        titleLabel.font = .systemFont(ofSize: 40, weight: .bold)
    }
    
    private func setupEmailText() {
        addSubview(emailText)
        
        emailText.translatesAutoresizingMaskIntoConstraints = false
        let top = emailText.topAnchor.constraint(equalTo: titleLabel.topAnchor, constant: 100)
        let width = emailText.widthAnchor.constraint(equalToConstant: 320)
        let centerX = emailText.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor)
        NSLayoutConstraint.activate([top, width, centerX])
        
        emailText.placeholder = "email"
        emailText.borderStyle = .roundedRect
        emailText.layer.borderWidth = 0.5
        emailText.layer.borderColor = UIColor.gray.cgColor
        emailText.keyboardType = .emailAddress
    }
    
    private func setupPasswordText() {
        addSubview(passwordText)
        
        passwordText.translatesAutoresizingMaskIntoConstraints = false
        let top = passwordText.topAnchor.constraint(equalTo: emailText.topAnchor, constant: 50)
        let width = passwordText.widthAnchor.constraint(equalToConstant: 320)
        let centerX = passwordText.centerXAnchor.constraint(equalTo: emailText.centerXAnchor)
        NSLayoutConstraint.activate([top, width, centerX])
        
        passwordText.placeholder = "password"
        passwordText.borderStyle = .roundedRect
        passwordText.layer.borderWidth = 0.5
        passwordText.layer.borderColor = UIColor.gray.cgColor
        passwordText.isSecureTextEntry = true
    }
    
}

