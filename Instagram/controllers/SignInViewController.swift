//
//  SignInViewController.swift
//  Instagram
//
//  Created by Shakhzod Ilkhomov on 12/03/21.
//

import UIKit

class SignInViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

   
    
    //MARK: - Navigation
    @IBAction func openHomeController(_ sender: Any) {
        sceneDelegate().callHomeController()
    }
    
    @IBAction func openSignUpController(_ sender: Any) {
        let vc = SignUpViewController(nibName: "SignUpViewController", bundle: nil)
        let nc = UINavigationController(rootViewController: vc)
        self.present(nc, animated: true, completion: nil)
    }
    
}
