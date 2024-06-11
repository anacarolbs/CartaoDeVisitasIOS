//
//  AppDelegate.swift
//  CartaoDeVisitasIOS
//
//  Created by Ana Carolina Barbosa de Souza on 10/06/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    let loginViewController = LoginViewController()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
        
        loginViewController.delegate = self
        window?.rootViewController = LoginViewController()
//        window?.rootViewController = AccountSummaryViewController()
//        window?.rootViewController = OnboardingContainerViewController()
//        window?.rootViewController = OnboardingViewController(heroImageName: "image1", titleText: "Seja muito bem-vindo(a)!")
//        window?.rootViewController = OnboardingViewController(heroImageName: "image1", titleText: "Seja muito bem-vindo(a)")

        return true
    }
}

extension AppDelegate: LoginViewControllerDelegate {
    func didLogin() {
        print("foo - Did login")
    }
}
