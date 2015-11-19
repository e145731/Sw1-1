//
//  secondViewController.swift
//  Sw1-1
//
//  Created by 比嘉　盛哉 on 11/16/15.
//  Copyright © 2015 modeling. All rights reserved.
//

import UIKit


class GameViewController: UIViewController {

    
    //時間計測用の変数.
    var cnt : Float = 60
    //時間表示用のラベル.
    var myLabel : UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 背景色を設定.
        view.backgroundColor = UIColor.whiteColor()
    
        // endボタンを作成.
        let endButton: UIButton = UIButton(frame: CGRectMake(0,0,200,70))
        endButton.backgroundColor = UIColor.redColor();
        endButton.layer.masksToBounds = true
        endButton.setTitle("end", forState: .Normal)
        endButton.layer.cornerRadius = 20.0
        endButton.layer.position = CGPoint(x: self.view.bounds.width/2 , y:self.view.bounds.height-200)
        endButton.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(endButton);
        
        
        //ラベルを作る.
        myLabel = UILabel(frame: CGRectMake(0,0,200,50))
        myLabel.layer.masksToBounds = true
        myLabel.layer.cornerRadius = 20.0
        myLabel.text = "\(cnt)"
        myLabel.textColor = UIColor.blackColor()
        myLabel.shadowColor = UIColor.grayColor()
        myLabel.textAlignment = NSTextAlignment.Center
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 200)
        self.view.addSubview(myLabel)
        //タイマーを作る.
        NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: "onUpdate:", userInfo: nil, repeats: true)
    }
    
    
    
    //endボタンイベント.
    internal func onClickMyButton(sender: UIButton){
        // 遷移するViewを定義.
        let sardViewController: UIViewController = ScoreViewController()
        // アニメーションを設定.
        sardViewController.modalTransitionStyle = UIModalTransitionStyle.FlipHorizontal
        // Viewの移動.
        self.presentViewController(sardViewController, animated: true, completion: nil)
    }
    
    
    
    //NSTimerIntervalで指定された秒数毎に呼び出されるメソッド.
    func onUpdate(timer : NSTimer){
        
        cnt -= 0.1
        
        //桁数を指定して文字列を作る.
        let str = "".stringByAppendingFormat("%.1f",cnt)
        
        myLabel.text = str
        }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}