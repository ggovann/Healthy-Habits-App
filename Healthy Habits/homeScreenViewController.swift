//
//  homeScreenViewController.swift
//  Healthy Habits
//
//  Created by Apple on 6/27/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class homeScreenViewController: UIViewController {
    
    var names : Name? = nil
    
    @IBOutlet weak var nameLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
                
        if let realName = names {
            nameLabel.text? = realName.userName!
        }


    }
    
    


}
