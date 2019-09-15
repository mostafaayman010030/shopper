//
//  ViewController.swift
//  shopper
//
//  Created by ayman on 9/4/19.
//  Copyright © 2019 ayman. All rights reserved.
//

import UIKit

class MAINVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var wagwtxt: UITextField!
    @IBOutlet weak var pricetxt: UITextField!
    @IBOutlet weak var reslable: UILabel!
    @IBOutlet weak var hourslable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let calcbtn=UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 50))
        calcbtn.backgroundColor=#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
        calcbtn.setTitle("Calculator", for: .normal)
        calcbtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcbtn.addTarget(self,action:#selector(MAINVC.calculate) , for: .touchUpInside)
        wagwtxt.inputAccessoryView=calcbtn
        pricetxt.inputAccessoryView=calcbtn
        
        
        hourslable.isHidden=false
        reslable.isHidden=false
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    @objc func calculate()  {
        
        if let wagetxt=wagwtxt.text,let pricetxt=pricetxt.text
        {
         if let wage=Double(wagetxt),let price=Double(pricetxt)
         {
            view.endEditing(true)
            reslable.isHidden=false
            hourslable.isHidden=false
            reslable.text="\(wagecal.getmony(forwage:wage , forprice:price))"
            
            }
        }
        
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let allowedx="1234567890"
        let allowedxset=CharacterSet(charactersIn: allowedx)
        let typeset=CharacterSet(charactersIn: string)
        return allowedxset.isSuperset(of: typeset)
    }
    
    
    @IBAction func cleare(_ sender: Any) {
        wagwtxt.text=""
        pricetxt.text=""
        hourslable.isHidden=true
        reslable.isHidden=true
    }
    
    
    
    
    
    
    
    
    

    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

