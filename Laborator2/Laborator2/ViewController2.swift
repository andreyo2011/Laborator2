//
//  ViewController2.swift
//  Laborator2
//
//  Created by user216460 on 8/31/22.
//

import UIKit

class ViewController2:UIViewController{
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "cv"
        
    }
    
    @IBAction func doSomething(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
