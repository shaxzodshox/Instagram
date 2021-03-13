//
//  BaseViewController.swift
//  Instagram
//
//  Created by Shakhzod Ilkhomov on 13/03/21.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    func appDelegate() -> AppDelegate{
        return UIApplication.shared.delegate as! AppDelegate
    }
    
    func sceneDelegate() -> SceneDelegate{
        return ((UIApplication.shared.connectedScenes.first!.delegate as? SceneDelegate)!)
    }
}
