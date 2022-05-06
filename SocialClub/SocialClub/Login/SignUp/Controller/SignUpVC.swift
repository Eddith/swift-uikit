//
//  ViewController.swift
//  SocialClub
//
//  Created by Ali Koçman on 17.03.2020.
//  Copyright © 2020 Ali Koçman. All rights reserved.
//

import UIKit

final class SignUpVC: UIViewController {
    
    var safeArea: UILayoutGuide!
    
    private let signUpView = SignUpView()
    
    private let buttonSignUp = UIButton()
    
    private let signInLabel = UILabel()
    private let signInButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        safeArea = view.layoutMarginsGuide
        view.backgroundColor = .white
        setupView()
    }
    
    private func setupView() {
        setupNavigation()
        setupSignUpView()
        setupButtonSignUp()
        setupSignInLabel()
        setupSignInButton()
    }
    
    private func setupNavigation() {
        navigationController?.isNavigationBarHidden = true
        navigationItem.hidesBackButton = true
    }
    
    private func setupSignUpView() {
        view.addSubview(signUpView)
        
        signUpView.translatesAutoresizingMaskIntoConstraints = false
        let top = signUpView.topAnchor.constraint(equalTo: safeArea.topAnchor)
        let leading = signUpView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor)
        let bottom = signUpView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor)
        let trailing = signUpView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor)
        NSLayoutConstraint.activate([top, leading, bottom, trailing])
    }
    
    private func setupButtonSignUp() {
        view.addSubview(buttonSignUp)
        
        buttonSignUp.translatesAutoresizingMaskIntoConstraints = false
        let top = buttonSignUp.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 500)
        let width = buttonSignUp.widthAnchor.constraint(equalToConstant: 320)
        let height = buttonSignUp.heightAnchor.constraint(equalToConstant: 50)
        let centerX = buttonSignUp.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor)
        NSLayoutConstraint.activate([top, width, height, centerX])
        
        buttonSignUp.setTitle("SignUp", for: .normal)
        buttonSignUp.backgroundColor = UIColor.red
        buttonSignUp.setTitleColor(UIColor.white, for: .normal)
        buttonSignUp.titleLabel?.font = .boldSystemFont(ofSize: 20)
        buttonSignUp.addTarget(self, action: #selector(gotoHome), for: .touchUpInside)
    }
    
    @objc
    private func gotoHome() {
        let nextScreen = PostVC()
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    
    private func setupSignInLabel() {
        view.addSubview(signInLabel)
        
        signInLabel.translatesAutoresizingMaskIntoConstraints = false
        let top = signInLabel.topAnchor.constraint(equalTo: signUpView.topAnchor, constant: 580)
        let leading = signInLabel.leadingAnchor.constraint(equalTo: signUpView.leadingAnchor, constant: 40)
        NSLayoutConstraint.activate([top, leading])
        
        signInLabel.text = "Already have a account?"
        signInLabel.textColor = .black
        signInLabel.font = .boldSystemFont(ofSize: 20)
    }
    
    private func setupSignInButton() {
        view.addSubview(signInButton)
        
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        let top = signInButton.topAnchor.constraint(equalTo: signUpView.topAnchor, constant: 574)
        let trailing = signInButton.trailingAnchor.constraint(equalTo: signUpView.trailingAnchor, constant: -50)
        NSLayoutConstraint.activate([top, trailing])
        
        signInButton.setTitle("SignIn", for: .normal)
        signInButton.setTitleColor(.red, for: .normal)
        signInButton.titleLabel?.font = .boldSystemFont(ofSize: 20)
        signInButton.addTarget(self, action: #selector(signInButtonSegue), for: .touchUpInside)
    }
    
    @objc
    private func signInButtonSegue() {
        let nextScreen = SignInVC()
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    

}

