//
//  Caddie_App.swift
//  Caddie+
//
//  Created by johnny basgallop on 10/08/2023.
//

import SwiftUI
import Firebase

@main
struct Caddie_App: App {
    
//    Create a new user with a random UUID
    init() {
        FirebaseApp.configure()
        
        // Anonymous authentication with Firebase
        Auth.auth().signInAnonymously { authResult, error in
            guard let user = authResult?.user else {
                print("FAILED: Anonymous Authentication with Firebase.")
                return
            }
            let uid = user.uid
            print("Firebase: Anonymous user authenticated with uid: \(uid).")
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView() 
        }
    }
}
