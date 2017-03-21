//
//  AddPostVC.swift
//  MyHood
//
//  Created by Laurent Liu on 21/03/2017.
//  Copyright © 2017 Laurent Liu. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var descriptionField: UITextField!
    
    var imagePicker: UIImagePickerController!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        postImg.layer.cornerRadius = 120
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
    }

    @IBAction func cancelBtnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func addPicBtnPressed(_ sender: UIButton) {
        
        sender.setTitle("", for: .normal)
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func makePostBtnPressed(_ sender: UIButton) {
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage
        imagePicker.dismiss(animated: true, completion: nil)
        postImg.image = selectedImage
    }

}
