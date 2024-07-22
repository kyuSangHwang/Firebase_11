//
//  NoteAppApp.swift
//  NoteApp
//
//  Created by 황규상 on 7/22/24.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        
        // Firebase 연동 확인 코드
        /*
         if FirebaseApp.app() != nil {
            print("Firebase is configured and ready to use")
        } else {
            print("Firebase configuration failed")
        }
         */
        
        return true
    }
}


@main
struct NoteAppApp: App {
    // register app delegate for Firebase setup
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
