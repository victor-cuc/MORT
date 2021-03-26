//
//  MainView.swift
//  MORT
//
//  Created by Victor Cuc on 26/03/2021.
//

import SwiftUI

struct MainView: View {
    var body: some View {
      TabView {
        ContentView()
          .tabItem {
            Label("Home", systemImage: "house.fill")
          }
        SavedView()
          .tabItem {
            Label("Saved", systemImage: "heart.fill")
          }
      }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
          .previewedInAllColorSchemes
    }
}
