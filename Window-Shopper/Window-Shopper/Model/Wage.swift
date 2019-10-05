//
//  Wage.swift
//  Window-Shopper
//
//  Created by MOHAMED on 10/5/19.
//  Copyright © 2019 MOHAMED. All rights reserved.
//

import Foundation
class Wage
{
    class func getHours(forwage wage : Double , Forprice price:Double) ->Int
   {
    return Int(ceil(price/wage))
    }
    }
