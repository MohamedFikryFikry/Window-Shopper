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
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width:view.frame.size.width, height: 45))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(UIColor.white, for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.Calculate), for:.touchUpInside)
        wagetxt.inputAccessoryView = calcBtn
        pricetxt.inputAccessoryView = calcBtn
        
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        hideKeyboardWhenTappedAround()
    }
    
    @objc func Calculate(){
        //check on it so it cannot be nil
        if let wagetxt = wagetxt.text , let pricetxt = pricetxt.text{
            if let wage = Double(wagetxt) , let price = Double(pricetxt)
            {
                //remove number of keyboard
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = ("\(Wage.getHours(forwage: wage, Forprice: price))")
            }
        }

    }
    
    @IBAction func clearCalculaterPress(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wagetxt.text = ""
        pricetxt.text = ""
       
    }
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tapGesture = UITapGestureRecognizer(target: self,
                                                action: #selector(hideKeyboard))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
}
