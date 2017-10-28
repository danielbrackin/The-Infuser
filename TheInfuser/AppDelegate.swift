//
//  AppDelegate.swift
//  TheInfuser
//
//  Created by Daniel Brackin on 8/13/17.
//  Copyright © 2017 Daniel Brackin. All rights reserved.
//

import UIKit
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        /*
        let config = Realm.Configuration(
            schemaVersion: 2,  // Must be greater than previous version
            migrationBlock: { migration, oldSchemaVersion in
                if (oldSchemaVersion < 1) {
                    // minimally this can be empty
                }
                if (oldSchemaVersion < 2) {
                    // minimally this can be empty
                }
                print("Realm migration did run")  // Log to know migration was executed
        })
        
        // Make sure to set the default configuration
        Realm.Configuration.defaultConfiguration = config
        */
        
        //UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: UIColor(red:1.0, green:0.78, blue:0.38, alpha:1.0)], for: .selected)
       // UITabBarItem.appearance().setTitleTextAttributes([NSFontAttributeName: UIFont(name:"Avenir Book", size:10)!], for: .normal)
        
       // UITabBar.appearance().tintColor = UIColor(red:1.0, green:0.78, blue:0.38, alpha:1.0)
        


        
       /* UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.font: UIFont(name:"FilsonSoftW03-Bold", size:10)!], for: .normal)
        
        
        UIBarButtonItem.appearance().setTitleTextAttributes([NSAttributedStringKey.font: UIFont(name: "FilsonSoftW03-Bold", size: 18)!], for: .normal)
        */
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

