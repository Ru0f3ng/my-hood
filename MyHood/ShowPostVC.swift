//
//  ShowPostVC.swift
//  MyHood
//
//  Created by Laurent Liu on 28/03/2017.
//  Copyright © 2017 Laurent Liu. All rights reserved.
//

import UIKit

class ShowPostVC: UIViewController {

    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var postDescription: UILabel!
    @IBOutlet weak var postTitle: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
