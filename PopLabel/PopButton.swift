//
//  PopButton.swift
//  PopLabel
//
//  Created by appinventiv on 14/09/17.
//  Copyright © 2017 appinventiv. All rights reserved.
//

import UIKit

class PopButton: UIViewController {
    
    @IBOutlet weak var popBtn: UIButton!
    @IBOutlet weak var shakeBtn: UIView!
    
   
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
popBtn.layer.cornerRadius = 25.0
        shakeBtn.layer.cornerRadius = 25.0
        
       
    }

    @IBAction func popBtn(_ sender: UIButton) {
        popBtn.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        UIView.animate(withDuration: 2.0,
                       delay: 0,
                       usingSpringWithDamping: 0.2,
                       initialSpringVelocity: 6.0,
                       options: .allowUserInteraction,
                       animations: { [weak self] in
                        self?.popBtn.transform = .identity
            },
                       completion: nil)
    }
    
    @IBAction func shakeBtn(_ sender: UIButton) {
        shakeBtn.transform = CGAffineTransform(translationX: 1, y: -5)
        UIView.animate(withDuration: 0.5,
                       delay: 0,
                       usingSpringWithDamping: 0.0,
                       initialSpringVelocity: 6.0,
                       options: .allowUserInteraction,
                       animations: { [weak self] in
                        self?.shakeBtn.transform = .identity
            },
                       completion: nil)
    }
    
}
