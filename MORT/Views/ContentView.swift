//
//  ContentView.swift
//  MORT
//
//  Created by Victor Cuc on 08/03/2021
//

import SwiftUI

struct ContentView: View {
  
  var body: some View {
    NavigationView {
      List {
        Text("Popular")
          .font(.title2)
          .bold()
          .padding(.vertical)
        ScrollView (.horizontal, showsIndicators: false) {
          HStack (spacing: 20) {
            ForEach(1..<10) { _ in
              RouteButton(width: 170, height: 130)
            }
          }
        }
        Text("Community")
          .font(.title2)
          .bold()
          .padding(.vertical)
        
        ForEach(1..<20) { _ in
          RouteButton(height: 120)
            .padding(.vertical)
          
        }
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
