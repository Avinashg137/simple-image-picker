//
//  ViewController.swift
//  simple image picker
//
//  Created by MAC OS on 29/03/22.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnImagepicker(_ sender: Any) {
         let picker = UIImagePickerController()
        
        picker.allowsEditing = true
        
        picker.delegate = self
        
        present(picker, animated: true)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[.editedImage] as? UIImage else {return}
        
        imageView.image = image
        
        dismiss(animated: true )
    }
    
}

