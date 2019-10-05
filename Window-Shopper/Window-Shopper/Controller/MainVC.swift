//
//  ViewController.swift
//  Window-Shopper
//
//  Created by MOHAMED on 10/5/19.
//  Copyright © 2019 MOHAMED. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var wagetxt: CurrencyTxtField!
    @IBOutlet weak var pricetxt: CurrencyTxtField!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width:view.frame.size.width, height: 45))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(UIColor.white, for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.Calculate), for:.touchUpInside)
        wagetxt.inputAccessoryView = calcBtn
        pricetxt.inputAccessoryView = calcBtn
    }
    
    @objc func Calculate()
    {
        print("Hello")
    }
}

