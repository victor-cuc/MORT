//
//  MORTApp.swift
//  MORT
//
//  Created by Victor Cuc on 08/03/2021.
//

import SwiftUI
import Firebase

@main
struct MORTApp: App {
  init() {
    FirebaseApp.configure()
  }
  
  var body: some Scene {
    WindowGroup {
      MainView()
    }
  }
}
