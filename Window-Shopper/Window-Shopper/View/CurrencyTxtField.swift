//
//  CurrencyTxtField.swift
//  Window-Shopper
//
//  Created by MOHAMED on 10/5/19.
//  Copyright © 2019 MOHAMED. All rights reserved.
//

import UIKit

class CurrencyTxtField: UITextField {


    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2367829623)
        textAlignment = .center
        layer.cornerRadius = 5.0
        
     
        //unwrap optional because placeholder is optional
        if let Pholder = placeholder{
            let place = NSAttributedString(string: Pholder, attributes:
            [.foregroundColor: UIColor.white])
        attributedPlaceholder = place
        textColor = UIColor.white
        
        }

    }
}
