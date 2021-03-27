//
//  AppCoordinator.swift
//  Chat
//
//  Created by Daniil G on 22.03.2021.
//

import UIKit

class AppCoordinator: HomeCoordinatorlDelegate {
    
    // MARK: - Properties
    
    private let navigationController = UINavigationController()
    private let window: UIWindow
    
    private let homeCoordinator: HomeCoordinator
    
    // MARK: - Functions
    
    init(window: UIWindow) {
        self.window = window
        homeCoordinator = HomeCoordinator(navigationController: navigationController)
        homeCoordinator.delegate = self
    }
    
    func start() {
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        showHomeScreen()
    }
    
    private func showHomeScreen() {
        homeCoordinator.start()
    }
    
    func signIn() {
        print("signIn")
    }
}
