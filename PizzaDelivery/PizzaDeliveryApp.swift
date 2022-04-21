//
//  PizzaDeliveryApp.swift
//  PizzaDelivery
//
//  Created by sher on 15/4/22.
//

import SwiftUI
import Firebase
import FirebaseAuth

let screen = UIScreen.main.bounds

@main
struct PizzaDeliveryApp: App {
    
    @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate
    
    var body: some Scene {
        WindowGroup {
            AuthView()
        }
    }
    
    class AppDelegate: NSObject,  UIApplicationDelegate {

      var window: UIWindow?

      func application(_ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions:
                       [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
                        FirebaseApp.configure()
          print("Ok firebase ready")

        return true
      }
    }
}
