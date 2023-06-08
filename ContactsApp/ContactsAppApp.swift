//
//  ContactsAppApp.swift
//  ContactsApp
//
//  Created by Haneen on 18/11/1444 AH.
//

import SwiftUI
import FirebaseCore




@main
struct YourApp: App {
  // register app delegate for Firebase setup
  @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
      var body: some Scene {
        WindowGroup {
          NavigationView {
            ContentView()
          }
        }
      }
    }
//    func application(_ application: UIApplication, didFinishLaunchingwithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil ) -> Bool{
//        FirebaseApp.configure()
//        return true
//    }

//
class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

