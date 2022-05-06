//
//  SignInVC.swift
//  SocialClub
//
//  Created by Ali Koçman on 17.03.2020.
//  Copyright © 2020 Ali Koçman. All rights reserved.
//

import UIKit

final class SignInVC: UIViewController {
    
    var safeArea: UILayoutGuide!
    
    private let signUpView = SignInView()
    
    private let buttonSignIn = UIButton()
    
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
        setupSignInView()
        setupButtonSignUp()
        setupSignUpLabel()
        setupSignUpButton()
    }
    
    private func setupNavigation() {
        navigationController?.isNavigationBarHidden = true
        navigationItem.hidesBackButton = true
    }
    
    private func setupSignInView() {
        view.addSubview(signUpView)
        
        signUpView.translatesAutoresizingMaskIntoConstraints = false
        let top = signUpView.topAnchor.constraint(equalTo: safeArea.topAnchor)
        let leading = signUpView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor)
        let bottom = signUpView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor)
        let trailing = signUpView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor)
        NSLayoutConstraint.activate([top, leading, bottom, trailing])
    }
    
    private func setupButtonSignUp() {
        view.addSubview(buttonSignIn)
        
        buttonSignIn.translatesAutoresizingMaskIntoConstraints = false
        let top = buttonSignIn.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 423)
        let width = buttonSignIn.widthAnchor.constraint(equalToConstant: 320)
        let height = buttonSignIn.heightAnchor.constraint(equalToConstant: 50)
        let centerX = buttonSignIn.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor)
        NSLayoutConstraint.activate([top, width, height, centerX])
        
        buttonSignIn.setTitle("SignIn", for: .normal)
        buttonSignIn.backgroundColor = UIColor.red
        buttonSignIn.setTitleColor(UIColor.white, for: .normal)
        buttonSignIn.titleLabel?.font = .boldSystemFont(ofSize: 20)
        buttonSignIn.addTarget(self, action: #selector(goToHome), for: .touchUpInside)
    }
    
    @objc
    private func goToHome() {
        let nextScreen = PostVC()
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    
    private func setupSignUpLabel() {
        view.addSubview(signInLabel)
        
        signInLabel.translatesAutoresizingMaskIntoConstraints = false
        let top = signInLabel.topAnchor.constraint(equalTo: signUpView.topAnchor, constant: 500)
        let leading = signInLabel.leadingAnchor.constraint(equalTo: signUpView.leadingAnchor, constant: 60)
        NSLayoutConstraint.activate([top, leading])
        
        signInLabel.text = "Don't have account?"
        signInLabel.textColor = .black
        signInLabel.font = .boldSystemFont(ofSize: 20)
    }
    
    private func setupSignUpButton() {
        view.addSubview(signInButton)
        
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        let top = signInButton.topAnchor.constraint(equalTo: signUpView.topAnchor, constant: 494)
        let trailing = signInButton.trailingAnchor.constraint(equalTo: signUpView.trailingAnchor, constant: -57)
        NSLayoutConstraint.activate([top, trailing])
        
        signInButton.setTitle("SignUp", for: .normal)
        signInButton.setTitleColor(.red, for: .normal)
        signInButton.titleLabel?.font = .boldSystemFont(ofSize: 20)
        signInButton.addTarget(self, action: #selector(signInButtonSegue), for: .touchUpInside)
    }
    
    @objc
    private func signInButtonSegue() {
        let nextScreen = SignUpVC()
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    

}
