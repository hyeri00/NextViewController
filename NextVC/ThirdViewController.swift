//
//  ThirdViewController.swift
//  NextVC
//
//  Created by 혜리 on 2022/11/04.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel!
    
    var someString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainLabel.text = someString
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
