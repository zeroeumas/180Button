//
//  ViewController.swift
//  180Button
//
//  Created by Nathalia Melare on 01/06/20.
//  Copyright © 2020 Nathalia Melare. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var phone: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpButton()
    }

    func setUpButton() {
           let button = UIButton(type: .system)
           button.frame = CGRect(x: self.view.frame.width/3, y: self.view.frame.height/2, width: 150, height: 75)
           button.backgroundColor = .systemGreen
           button.setTitle("Call", for: UIControl.State.normal)
           button.setTitleColor(.white, for: UIControl.State.normal)
           button.titleLabel?.font = .systemFont(ofSize: 40)
           button.addTarget(self, action: #selector(call(sender:)), for: UIControl.Event.touchDown)
           self.view.addSubview(button)
       }
    
    @objc func call(sender: UIButton!) {
         if let url = URL(string: "tel://\(phone)"),
             UIApplication.shared.canOpenURL(url) {
             UIApplication.shared.open(url, options: [:], completionHandler: nil)
         }
     }
}

