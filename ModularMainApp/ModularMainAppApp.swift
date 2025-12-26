//
//  ModularMainAppApp.swift
//  ModularMainApp
//
//  Created by baman on R 7/12/22.
//

import SwiftUI
import UIKit
import PrivacyScreenCapture
import UImodule

//import UserInterfaceModule
//@main
//struct ModularMainAppApp: App {
//    init() {
//    NotificationCenter.default.addObserver(
//                self,
//                selector: #selector(userDidTakeScreenshot),
//                name: UIApplication.userDidTakeScreenshotNotification,
//                object: nil
//            )
//    }
//
//    var body: some Scene {
//        WindowGroup {
//            ContentView()
//            
//        }
//    }
//    
//    @objc func userDidTakeScreenshot() {
//        // This method is called when a screenshot is taken
//        print("Screenshot taken!")
//        // You can add your custom logic here (e.g., log the event, show an alert)
//    }
//}

@main
struct ModularMainAppApp: App {

    @UIApplicationDelegateAdaptor(AppDelegate.self)
    var appDelegate

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}







///  This approch is not needed. Just to see how it works in Appdelegate
final class AppDelegate: NSObject, UIApplicationDelegate {

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
    ) -> Bool {
        PrivacyScreenManager.shared.enableFeature()
        return true
    }
    
}
