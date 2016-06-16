//
//  WeChatViewController.swift
//  WeChatBySwift
//
//  Created by kermit on 16/4/13.
//  Copyright © 2016年 kermit. All rights reserved.
//

import UIKit

class WeChatViewController: UIViewController {
    
    /// 未读消息数
    var _tipsNum:Int = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        self.title = "微信"
//        self.navigationItem.title = "微信"
//        // 修改标题的颜色
//        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.whiteColor()]
        
        // 标题的视图
        let titleView = UIView(frame: CGRectMake(0, 0, 100, 44))
        let titleNameLabel = UILabel(frame: CGRectMake(0, 0, 100, 44))
        if _tipsNum == 0 {
            titleNameLabel.text = "微信"
        } else {
            titleNameLabel.text = "微信(\(_tipsNum))"
        }
        titleNameLabel.textColor = UIColor.whiteColor()
        titleNameLabel.font = UIFont.systemFontOfSize(18)
        titleNameLabel.textAlignment = NSTextAlignment.Center
        titleView.addSubview(titleNameLabel)
        self.navigationItem.titleView = titleView;
        
//        // 设置导航栏颜色
//        self.navigationController?.navigationBar.barTintColor = UIColor(red: 39/255, green: 39/255, blue: 44/255, alpha: 1.0)
//        // 设置背景图片 隐藏导航栏
////        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: .Default)
//        // 设置导航栏阴影
//        self.navigationController?.navigationBar.shadowImage = UIImage()

        // 成功
        let rigthItem = UIBarButtonItem(image: UIImage(named: "barBtnAdd")?.imageWithRenderingMode(.AlwaysOriginal), style: .Plain, target: self, action: #selector(WeChatViewController.addBtnClicked))
        // 按钮向右偏移一点
        let gap = UIBarButtonItem(barButtonSystemItem: .FixedSpace, target: nil, action: nil)
        gap.width = -5.0
        self.navigationItem.rightBarButtonItems = [gap,rigthItem]

    }
    
    // 添加
    func addBtnClicked() {
        
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
