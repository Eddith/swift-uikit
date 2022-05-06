//
//  SignUpView.swift
//  SocialClub
//
//  Created by Ali Koçman on 17.03.2020.
//  Copyright © 2020 Ali Koçman. All rights reserved.
//

import UIKit

final class SignUpView: UIView {
    private let titleLabel = UILabel()
    
    private let emailText = UITextField()
    private let usernameText = UITextField()
    private let passwordText = UITextField()
    
    private let universityText = UITextField()
    
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
        setupUsernameText()
        setupPasswordText()
        setupUniversityText()
    }
    
    private func setupTitleLabel() {
        addSubview(titleLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        let top = titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 170)
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
    
    private func setupUsernameText() {
        addSubview(usernameText)
        
        usernameText.translatesAutoresizingMaskIntoConstraints = false
        let top = usernameText.topAnchor.constraint(equalTo: emailText.topAnchor, constant: 50)
        let width = usernameText.widthAnchor.constraint(equalToConstant: 320)
        let centerX = usernameText.centerXAnchor.constraint(equalTo: emailText.centerXAnchor)
        NSLayoutConstraint.activate([top, width, centerX])
        
        usernameText.placeholder = "username"
        usernameText.layer.borderWidth = 0.5
        usernameText.layer.borderColor = UIColor.gray.cgColor
        usernameText.borderStyle = .roundedRect
    }
    
    private func setupPasswordText() {
        addSubview(passwordText)
        
        passwordText.translatesAutoresizingMaskIntoConstraints = false
        let top = passwordText.topAnchor.constraint(equalTo: usernameText.topAnchor, constant: 50)
        let width = passwordText.widthAnchor.constraint(equalToConstant: 320)
        let centerX = passwordText.centerXAnchor.constraint(equalTo: usernameText.centerXAnchor)
        NSLayoutConstraint.activate([top, width, centerX])
        
        passwordText.placeholder = "password"
        passwordText.borderStyle = .roundedRect
        passwordText.layer.borderWidth = 0.5
        passwordText.layer.borderColor = UIColor.gray.cgColor
        passwordText.isSecureTextEntry = true
    }
    
    private func setupUniversityText() {
        addSubview(universityText)
        
        universityText.translatesAutoresizingMaskIntoConstraints = false
        let top = universityText.topAnchor.constraint(equalTo: passwordText.topAnchor, constant: 50)
        let width = universityText.widthAnchor.constraint(equalToConstant: 320)
        let height = universityText.heightAnchor.constraint(equalToConstant: 40)
        let centerX = universityText.centerXAnchor.constraint(equalTo: passwordText.centerXAnchor)
        NSLayoutConstraint.activate([top, width, height, centerX])
        
        universityText.placeholder = "university"
        universityText.borderStyle = .roundedRect
        universityText.layer.borderWidth = 0.5
        universityText.layer.borderColor = UIColor.gray.cgColor
    }

}
