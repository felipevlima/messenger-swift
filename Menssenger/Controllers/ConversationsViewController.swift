//
//  ViewController.swift
//  Menssenger
//
//  Created by Felipe Vieira Lima on 07/11/22.
//

import UIKit

class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let isLoggedIn = UserDefaults.standard.bool(forKey: "logged_in")
        
        if !isLoggedIn {
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: false)
        }
    }

    
}

