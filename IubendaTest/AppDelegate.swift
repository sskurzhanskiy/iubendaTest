//
//  AppDelegate.swift
//  IubendaTest
//
//  Created by Sergei Skurzhanskii on 03.11.2021.
//

import UIKit

import iubenda

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        configurationIubenda()

        window = UIWindow(frame: UIScreen.main.bounds)

        let viewController = ViewController()
        let navController = UINavigationController(rootViewController: viewController)
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
        // Override point for customization after application launch.
        return true
    }

    // MARK: private methods
    private func configurationIubenda() {
        let config = IubendaCMPConfiguration()
        config.gdprEnabled = true
        config.forceConsent = true
        config.googleAds = true
        config.siteId = "2379503"
        config.cookiePolicyId = "80499300"
        config.applyStyles = false
        config.cssFile = Bundle.main.path(forResource: "custom_style", ofType: "css")
        config.jsonFile = Bundle.main.path(forResource: "config", ofType: "json")
        IubendaCMP.initialize(with: config)
    }
}

