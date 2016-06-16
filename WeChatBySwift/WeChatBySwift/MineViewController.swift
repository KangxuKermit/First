//
//  MineViewController.swift
//  WeChatBySwift
//
//  Created by kermit on 16/4/13.
//  Copyright © 2016年 kermit. All rights reserved.
//

import UIKit


class MineViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet var bgScrollView: UIScrollView!
    
    
    /// 个人资料
    var mineInfoTableView: UITableView!
    /// 功能
    var photoTableView: UITableView!
    /// 表情
    var faceTableView: UITableView!
    /// 设置
    var settingTableView: UITableView!
    
    
    let SCREEN_WIDTH = UIScreen.mainScreen().bounds.size.width
    let SCREEN_HEIGHT = UIScreen.mainScreen().bounds.size.height
    
    
    override func viewWillAppear(animated: Bool) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "我"
        
        bgScrollView.backgroundColor = UIColor(red: 239/255, green: 239/255, blue: 244/255, alpha: 1.0)
        
        
    }
    
    func initTableView() {
        // 个人资料
        mineInfoTableView = UITableView(frame: CGRectMake(0, 10, SCREEN_WIDTH, 85), style: .Plain)
        mineInfoTableView.bounces = false
        mineInfoTableView.dataSource = self
        mineInfoTableView.delegate = self
        bgScrollView.addSubview(mineInfoTableView)
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 85
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let identifier = "MineInfoCell"
        var cell = tableView.dequeueReusableCellWithIdentifier(identifier)
        if cell == nil {
            cell = NSBundle.mainBundle().loadNibNamed("MineInfoTableViewCell", owner: self, options: nil)[0] as? UITableViewCell;
        }
        return cell!;
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
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
