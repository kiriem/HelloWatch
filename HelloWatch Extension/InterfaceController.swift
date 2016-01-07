//
//  InterfaceController.swift
//  HelloWatch Extension
//
//  Created by Kyrie Miyajima on 2016/01/06.
//  Copyright © 2016年 Kirie Miyajima. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet var myLabel: WKInterfaceLabel!
    @IBOutlet var plusBtn: WKInterfaceButton!
    @IBOutlet var minusBtn: WKInterfaceButton!
    
    var num:Int = 0

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        myLabel.setText(String(num))
        myLabel.setTextColor(UIColor.whiteColor())
        
        plusBtn.setTitle("+1")
        plusBtn.setBackgroundColor(UIColor.redColor())
    
        minusBtn.setTitle("-1")
        minusBtn.setBackgroundColor(UIColor.blueColor())
        
        
        //FourceTouch時の設定
        addMenuItemWithItemIcon(WKMenuItemIcon.Decline, title: "reset", action: Selector("SelectMenu"))
        
        
    }
    
    func SelectMenu(){
        num = 0
        myLabel.setText(String(num))
        print("menu selected")
    }
    

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func plus(){
        num++
        myLabel.setText(String(num))
        print("+1 tapped")

    }
    
    @IBAction func minus(){
        num--
        myLabel.setText(String(num))
        print("-1 tapped")

    }

}
