//
//  SignUpViewController.swift
//  Instagram
//
//  Created by Shakhzod Ilkhomov on 12/03/21.
//

import UIKit

class SignUpViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Sign up"
        // Do any additional setup after loading the view.
    }

    @IBAction func saveUser(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func openSignInController(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
