//
//  ContactsViewController.swift
//  WeChatBySwift
//
//  Created by kermit on 16/4/13.
//  Copyright © 2016年 kermit. All rights reserved.
//

import UIKit

class ContactsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "通讯录"
        // 标题的视图
        let titleView = UIView(frame: CGRectMake(0, 0, 100, 44))
        let titleNameLabel = UILabel(frame: CGRectMake(0, 0, 100, 44))
        titleNameLabel.text = "通讯录"
        titleNameLabel.textColor = UIColor.whiteColor()
        titleNameLabel.font = UIFont.systemFontOfSize(18)
        titleNameLabel.textAlignment = NSTextAlignment.Center
        titleView.addSubview(titleNameLabel)
        self.navigationItem.titleView = titleView;
        
//        // 设置导航栏颜色
//        self.navigationController?.navigationBar.barTintColor = UIColor(red: 39/255, green: 39/255, blue: 44/255, alpha: 1.0)
//        // 设置导航栏阴影
//        self.navigationController?.navigationBar.shadowImage = UIImage()

        let rigthItem = UIBarButtonItem(image: UIImage(named: "barBtnAddFriends")?.imageWithRenderingMode(.AlwaysOriginal), style: .Plain, target: self, action: #selector(ContactsViewController.addFriendsBtnClicked))
        // 按钮向右偏移一点
        let gap = UIBarButtonItem(barButtonSystemItem: .FixedSpace, target: nil, action: nil)
        gap.width = -5.0
        self.navigationItem.rightBarButtonItems = [gap,rigthItem]
    }

    // 添加好友
    func addFriendsBtnClicked() {
        
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
