//
//  ViewController.swift
//  FunnyAnimation
//
//  Created by Tan on 1/3/18.
//  Copyright © 2018 Ngoc Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblText: UILabel!
    @IBOutlet weak var lblImg: UIImageView!
    
    /*
     Compare between viewDidLoad and ViewDiaAppear or ViewWillAppear:
     ViewDidAppear: one time for displaying, suitable for static data.
     ViewWillAppear or ViewDidAppear: multiple time, suitable for dynamic data.
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*First, img and label have their alpha (opacity = 0 )
         */
        
        lblText!.alpha = 0
        lblImg!.alpha = 0
    }
    override func viewWillAppear(_ animated: Bool) {
        UIView.animate(withDuration: 2, animations: {
            self.lblImg!.alpha = 0.9
        }) { (animated) in
            UIView.animate(withDuration: 3, animations: {
                self.lblText.alpha = 1
                self.lblText.center = CGPoint(x: self.lblImg.center.x, y: 50)
                self.lblImg.center = CGPoint (x: self.lblImg.center.x, y: 400)
            }, completion: { (finished) in
                self.lblImg.alpha = 1
            })
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

