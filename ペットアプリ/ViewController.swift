//
//  ViewController.swift
//  ペットアプリ
//
//  Created by HARADA REO on 2015/10/25.
//  Copyright © 2015年 reo harada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogImageView: UIImageView!
    @IBOutlet weak var wanwanLabel: UILabel!
    @IBOutlet weak var kuunLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // ラベルを隠す
        self.wanwanLabel.hidden = true
        self.kuunLabel.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapNose(sender: AnyObject) {
        // 画像が変わる
        self.dogImageView.image = UIImage(named: "sigh.png")
    }

    @IBAction func tapBackground(sender: AnyObject) {
        // 画像が変わる
        self.dogImageView.image = UIImage(named: "normal.png")
    }
    
    @IBAction func tapTail(sender: AnyObject) {
        // 画像が変わる
        self.dogImageView.image = UIImage(named: "angry.png")
    }
    
    @IBAction func swipeHead(sender: AnyObject) {
        // 画像が変わる
        self.dogImageView.image = UIImage(named: "smile.png")
    }
    
    @IBAction func swipeStomach(sender: AnyObject) {
        // ワンワンと吠える
        // ラベルを表示する
        self.wanwanLabel.hidden = false
        
        // アニメーションで動かす
        UIView.animateWithDuration(1.0, animations: { () -> Void in
            // どんなアニメーションしたいか
            // ラベルを動かす=x座標を変更する
            self.wanwanLabel.frame.origin.x = 280
            }) { (Bool) -> Void in
                // 終わったあと何かするか？
                // ラベルを隠す
                self.wanwanLabel.hidden = true
                // 座標を元に戻す
                self.wanwanLabel.frame.origin.x = 15
        }
    }
    
    @IBAction func swipeLeftStomach(sender: AnyObject) {
        // く〜〜んのラベルを表示する
        self.kuunLabel.hidden = false
        // アニメーションで動かす
        UIView.animateWithDuration(1.0, animations: { () -> Void in
            // ラベルを動かす=x、y座標を動かす
            self.kuunLabel.frame.origin.x = 0
            self.kuunLabel.frame.origin.y = 0
            }) { (Bool) -> Void in
                // ラベルを隠す
                self.kuunLabel.hidden = true
                // 座標を元に戻す
                self.kuunLabel.frame.origin.x = 130
                self.kuunLabel.frame.origin.y = 241
        }
    }
    
    @IBAction func tapFoot(sender: AnyObject) {
        // 足を触ったら犬がジャンプする
        // 犬のy座標を動かす
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            // 犬のy座標を動かす
            self.dogImageView.frame.origin.y = 0
            }) { (Bool) -> Void in
                // 犬のy座標を元に戻す
                self.dogImageView.frame.origin.y = 261
        }
    }
    
}










