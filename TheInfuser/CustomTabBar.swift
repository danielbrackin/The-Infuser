//
//  CustomTabBar.swift
//  TheInfuser
//
//  Created by Daniel Brackin on 8/26/17.
//  Copyright © 2017 Daniel Brackin. All rights reserved.
//

import UIKit

class CustomTabBar: UITabBarController {
        
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            
            self.tabBar.barTintColor = UIColor(red:0.03, green:0.33, blue:0.42, alpha:1.0)
            self.tabBar.unselectedItemTintColor = UIColor.white
            self.tabBar.tintColor = UIColor(red:1.0, green:0.78, blue:0.38, alpha:1.0)
            self.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0);
            self.title = nil;
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
