//
//  MainTabBarController.swift
//  WeChatBySwift
//
//  Created by kermit on 16/4/13.
//  Copyright © 2016年 kermit. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 设置状态栏字体颜色
        // 测试
        UIApplication.sharedApplication().statusBarStyle = UIStatusBarStyle.LightContent
        
        let tabar: UITabBar = self.tabBar

        let tabbarItem1: UITabBarItem = tabar.items![0]
        tabbarItem1.image = UIImage(named: "tabbarMainNor")?.imageWithRenderingMode(.AlwaysOriginal)
        tabbarItem1.selectedImage = UIImage(named: "tabbarMainSel")?.imageWithRenderingMode(.AlwaysOriginal)
        
        let tabbarItem2: UITabBarItem = tabar.items![1]
        tabbarItem2.image = UIImage(named: "tabbarConNor")?.imageWithRenderingMode(.AlwaysOriginal)
        tabbarItem2.selectedImage = UIImage(named: "tabbarConSel")?.imageWithRenderingMode(.AlwaysOriginal)
        
        let tabbarItem3: UITabBarItem = tabar.items![2]
        tabbarItem3.image = UIImage(named: "tabbarDisNor")?.imageWithRenderingMode(.AlwaysOriginal)
        tabbarItem3.selectedImage = UIImage(named: "tabbarDisSel")?.imageWithRenderingMode(.AlwaysOriginal)
        
        let tabbarItem4: UITabBarItem = tabar.items![3]
        tabbarItem4.image = UIImage(named: "tabbarMeNor")?.imageWithRenderingMode(.AlwaysOriginal)
        tabbarItem4.selectedImage = UIImage(named: "tabbarMeSel")?.imageWithRenderingMode(.AlwaysOriginal)
        
        // tabBar 颜色
        self.tabBar.tintColor = UIColor(red: 77/255, green: 175/255, blue: 79/255, alpha: 1.0)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
