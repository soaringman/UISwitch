//
//  ViewController.swift
//  UISwitch
//
//  Created by Алексей Гуляев on 24.06.2022.
//

/*
 Create UISwitch by code
 */

import UIKit

class ViewController: UIViewController {
    
    let mySwitch = UISwitch()

    override func viewDidLoad() {
        super.viewDidLoad()

        //Create switch with frame
        self.mySwitch.frame = CGRect(x: 100,
                                     y: 100,
                                     width: 0,
                                     height: 0)
        self.view.addSubview(self.mySwitch)
        self.mySwitch.setOn(true, animated: true)
        
        //Check switch (off or on)
        if self.mySwitch.isOn {
            print("swith is on")
        } else {
            print("swith is off")
        }
        
        //Add observing
        self.mySwitch.addTarget(self,
                                action: #selector(switchChange(paramTarget:)),
                                for: .valueChanged)
    }
    
    //Add method for #selector
    @objc func switchChange(paramTarget: UISwitch) {
        
        print("parametr is = ", paramTarget)
        
        if paramTarget.isOn {
            print("swith is on")
        } else {
            print("swith is off")
        }
        
    }


}

