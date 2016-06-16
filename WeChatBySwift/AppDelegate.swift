//
//  AppDelegate.swift
//  WeChatBySwift
//
//  Created by kermit on 16/4/13.
//  Copyright © 2016年 kermit. All rights reserved.
//

import UIKit


@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    
    func APPStyleSetting() {
        
        // 设置导航栏title的颜色和大小
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName:UIColor.whiteColor(),
                                                           NSFontAttributeName:UIFont.systemFontOfSize(18.0)]
        // 设置导航栏颜色
        UINavigationBar.appearance().barTintColor = UIColor(red: 39/255, green: 39/255, blue: 44/255, alpha: 1.0)
        // 设置导航栏阴影
        UINavigationBar.appearance().shadowImage = UIImage()

    }
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        self.window!.backgroundColor = UIColor.whiteColor()
        self.window!.makeKeyAndVisible()
        
//        UINavigationBar.appearance().barTintColor = UIColor(red: 39/255, green: 39/255, blue: 44/255, alpha: 1.0)
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let mainTabbarVC = storyBoard.instantiateViewControllerWithIdentifier("MainTabbar")
        
        if true {
            // 登录成功
            //设置根视图
            self.window!.rootViewController = mainTabbarVC
        } else {
            // 登录注册页面
        }
        
        
        self.APPStyleSetting()

        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

