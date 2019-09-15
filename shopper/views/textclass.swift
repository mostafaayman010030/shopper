//
//  textclass.swift
//  shopper
//
//  Created by ayman on 9/4/19.
//  Copyright © 2019 ayman. All rights reserved.
//

import UIKit
@IBDesignable
class textclass: UITextField {

    override func draw(_ rect: CGRect) {
        let size:CGFloat=20
        let currentlable=UITextField(frame: CGRect(x: 50, y: (frame.size.height/2)-size/2, width: 20, height: 20))
        currentlable.backgroundColor=#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8870763644)
        currentlable.textColor=#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        currentlable.layer.cornerRadius=2.0
        currentlable.textAlignment = .center
        currentlable.clipsToBounds=true
        let forma=NumberFormatter()
        forma.numberStyle = .currency
        forma.locale = .current
        currentlable.text=forma.currencySymbol
        addSubview(currentlable)
    }
    
    
    override func prepareForInterfaceBuilder() {
        custmization()
    }
    override func awakeFromNib()
    {
        super.awakeFromNib()
        custmization()
    }
    func custmization()
    {
        backgroundColor=#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2600957306)
        layer.cornerRadius=6.0
        textAlignment = .center
        clipsToBounds=true

        if let p=placeholder
        {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor:#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
            attributedPlaceholder=place
            textColor=#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            
            
        }
    }

}
