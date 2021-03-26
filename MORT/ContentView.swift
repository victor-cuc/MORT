//
//  ContentView.swift
//  MORT
//
//  Created by Victor Cuc on 08/03/2021
//

import SwiftUI

struct ContentView: View {
  
  init() {
    UITableViewHeaderFooterView.appearance().tintColor = UIColor.clear
  }
  var body: some View {
    NavigationView {
      List {
        HStack {
          Text("Popular")
            .font(.title2)
            .bold()
            .padding()
          Spacer()
        }
        ScrollView (.horizontal, showsIndicators: false) {
          HStack {
            Text("route")
            Text("route")
            Text("route")
            Text("route")
            Text("route")
            Text("route")
            Text("route")
            Text("route")
            Text("route")
            Text("route")
          }
        }.frame(height: 100)
        HStack {
          Text("Community")
            .font(.title2)
            .bold()
            .padding()
          Spacer()
        }
        ForEach(1..<20) { _ in Text("Pulle")}
      }
      .navigationBarTitle("Routes")
      .toolbar {
        ToolbarItem(placement: .navigationBarLeading) {
          Button(action:{
            
          }, label: {
            Image(systemName: "plus")
          })
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewedInAllColorSchemes
  }
}

extension View {
  var previewedInAllColorSchemes: some View {
    ForEach(
      ColorScheme.allCases,
      id: \.self,
      content: preferredColorScheme
    )
  }
}
