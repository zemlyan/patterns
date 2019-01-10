//
//  AppDelegate.swift
//  patterns
//
//  Created by Oleksii Yelnykov on 04.01.2019.
//  Copyright © 2019 Oleksii Yelnykov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        Account.shared.name = "zemlyan"
        Account.shared.money = 1000
        
        return true
    }

}

