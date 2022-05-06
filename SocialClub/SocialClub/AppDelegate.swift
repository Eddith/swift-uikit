//
//  AppDelegate.swift
//  SocialClub
//
//  Created by Ali Koçman on 17.03.2020.
//  Copyright © 2020 Ali Koçman. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UINavigationController(rootViewController: CommentVC())
        window?.makeKeyAndVisible()
        
        return true
    }


}

