//
//  ViewController.swift
//  Sw1-1
//
//  Created by 比嘉　盛哉 on 11/16/15.
//  Copyright © 2015 modeling. All rights reserved.
//

import UIKit


class TopViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 背景色を設定.
        view.backgroundColor = UIColor.whiteColor()

        // 文字を書く為のlabelを作成
        let MyLabel: UILabel = UILabel(frame: CGRectMake(0,0,500,500))
        // 入力する文字を書く
        MyLabel.text = "Mac Snap!!"
        // 文字の大きさを指定する
        MyLabel.font = UIFont.systemFontOfSize(CGFloat(50))
        // 文字の色を白にする.
        MyLabel.textColor = UIColor.blackColor()
        // 文字の影の色をグレーにする.
        MyLabel.shadowColor = UIColor.whiteColor()
        // Textを中央寄せにする.
        MyLabel.textAlignment = NSTextAlignment.Center
        // 配置する座標を設定する.
        MyLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 200)
        // ViewにLabelを追加.
        self.view.addSubview(MyLabel)

        // 文字を書く為のlabelを作成
        let myLabel: UILabel = UILabel(frame: CGRectMake(0,0,200,150))
        // 入力する文字を書く
        myLabel.text = "By destro"
        // 文字の大きさを指定する
        myLabel.font = UIFont.systemFontOfSize(CGFloat(30))
        // 文字の色を白にする.
        myLabel.textColor = UIColor.blackColor()
        // 文字の影の色をグレーにする.
        myLabel.shadowColor = UIColor.whiteColor()
        // Textを中央寄せにする.
        myLabel.textAlignment = NSTextAlignment.Center
        // 配置する座標を設定する.
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 200+50)
        // ViewにLabelを追加.
        self.view.addSubview(myLabel)
        
        
        // Startボタンを作成.
        let startButton: UIButton = UIButton(frame: CGRectMake(0,0,200,70))
        startButton.backgroundColor = UIColor.redColor();
        startButton.layer.masksToBounds = true
        startButton.setTitle("START", forState: .Normal)
        startButton.layer.cornerRadius = 20.0
        startButton.layer.position = CGPoint(x: self.view.bounds.width/2 , y:self.view.bounds.height-200)
        startButton.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(startButton);
    }
    
    
    internal func onClickMyButton(sender: UIButton){
        // 遷移するViewを定義する.
        let secondViewController: UIViewController = GameViewController()
        // アニメーションを設定する.
        secondViewController.modalTransitionStyle = UIModalTransitionStyle.FlipHorizontal
        // Viewの移動する.
        self.presentViewController(secondViewController, animated: true, completion: nil)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

