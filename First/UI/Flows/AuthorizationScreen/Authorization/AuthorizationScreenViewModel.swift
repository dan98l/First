//
//  AuthorizationScreenViewModel.swift
//  First
//
//  Created by Daniil G on 28.03.2021.
//

import Foundation

protocol AuthorizationScreenViewModelDelegate: class {
    func didTapSignInButton(_ viewModel: AuthorizationScreenViewModel)
}

class AuthorizationScreenViewModel {
    
    // MARK: - Properties
    
    weak var delegate: AuthorizationScreenViewModelDelegate?
    
    // MARK: - Functions
    
    func didTapSignInButton() {
        delegate?.didTapSignInButton(self)
    }
}
