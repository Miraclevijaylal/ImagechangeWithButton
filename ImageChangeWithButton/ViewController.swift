//
//  ViewController.swift
//  ImageChangeWithButton
//
//  Created by Vijay Lal on 12/07/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt: UITextField!
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var image: UIImageView!
    let imagearray = ["camera","kittens","flower"]
    var index = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        image.image = UIImage(named: imagearray.first ?? "")
        txt.backgroundColor = . orange
        txt.textColor = .black
        
        
    }
//MARK: - ButtonAction
    @IBAction func button(_ sender: UIButton) {
        guard let indexValue = Int(txt.text ?? "") else {
            let alert = UIAlertController(title: "Alert", message: "Please enter a valid integer", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { [weak self] _ in
                self?.dismiss(animated: true)
            }))
            self.present(alert, animated: true)
            return
        }
        if indexValue < imagearray.count && indexValue >= 0 {
            image.image = UIImage(named: imagearray[indexValue])
        } else {
            let alert = UIAlertController(title: "Alert", message: "Please enter a number less than \(imagearray.count - 1) and greater than 0", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { [weak self] _ in
                self?.dismiss(animated: true)
            }))
            self.present(alert, animated: true)
        }
    }
    
 //MARK: - Textfieldaction
    
    
    
    
    
}

