//
//  File.swift
//  shopper
//
//  Created by ayman on 9/6/19.
//  Copyright © 2019 ayman. All rights reserved.
//

import Foundation
class wagecal
{
    
    class func getmony(forwage wage:Double, forprice price:Double)->Int {
        return Int(ceil(price/wage))
    }
}
