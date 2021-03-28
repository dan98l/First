//
//  AuthorizationScreenViewController.swift
//  First
//
//  Created by Daniil G on 28.03.2021.
//

import UIKit

class AuthorizationScreenViewController: UIViewController, AutoLoadable {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var signInButton: UIButton!
    
    @IBAction func signInButton(_ sender: Any) {
        viewModel.didTapSignInButton()
    }
    
    // MARK: - Properties
    
    var viewModel: AuthorizationScreenViewModel!
    
    // MARK: - Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingSignInButton()
    }
    
    private func settingSignInButton() {
        
        
        signInButton.layer.cornerRadius = signInButton.frame.size.height / 2
        signInButton.alpha = 0.0
        signInButton.layer.borderWidth = 1
        signInButton.layer.borderColor = UIColor.white.withAlphaComponent(0.75).cgColor
        showSignInButtonWithAnimations()
    }
    
    private func showSignInButtonWithAnimations() {
        UIView.animate(withDuration: 1.5, delay: 0.2, options: .curveEaseIn, animations: {
            self.signInButton.alpha = 1.0
        })
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
}

