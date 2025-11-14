//
//  AppDelegate.swift
//  RNProjectHost
//
//  Created by Erik Bye on 11/14/25.
//

import UIKit
import RNProjectReact

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Initialize React Native
        ReactNativeBrownfield.shared.bundle = ReactNativeBundle
        ReactNativeBrownfield.shared.startReactNative(onBundleLoaded: {
            print("React Native bundle loaded")
        }, launchOptions: launchOptions)
        
        // Add `window` property required by React Native
        window = UIWindow(frame: UIScreen.main.bounds)
        
        // Create VC that calls your module by name registered by `AppRegistry.registerComponent` of your React Native app
        let reactNativeVC = ReactNativeViewController(moduleName: "RNProject")
        
        // Display the view as full window or anyhow you need
        window?.rootViewController = reactNativeVC
        window?.makeKeyAndVisible()
        return true
    }
    
}

