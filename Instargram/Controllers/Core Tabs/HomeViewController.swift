//
//  ViewController.swift
//  Instargram
//
//  Created by 장우근 on 2020/09/14.
//  Copyright © 2020 pioneerplat. All rights reserved.
//

import UIKit
import FirebaseAuth
class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        handleNotAuthenticated()
    }

        
    private func handleNotAuthenticated() {
        // Check auth status
        if Auth.auth().currentUser == nil {
            // Show log in
            let loginVC = LoginViewController()
            //페이지 열릴때 어떻게 열릴지 표시
            loginVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            present(loginVC, animated: false)
        }
    }

}

