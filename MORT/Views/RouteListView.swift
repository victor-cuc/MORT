//
//  ContentView.swift
//  MORT
//
//  Created by Victor Cuc on 08/03/2021
//

import SwiftUI

struct RouteListView: View {
  @ObservedObject var routeListViewModel: RouteListViewModel
  
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
        
        ForEach(routeListViewModel.routes) { route in
          RouteButton(height: 120)
          Text(route.title)
        }
      }
      .navigationBarTitle("Routes")
      .toolbar {
        ToolbarItem(placement: .navigationBarLeading) {
          Button(action:{
            let mockRoute = Route(title: "Pulle Route", locations: ["Infinity", "Seven"])
            routeListViewModel.add(mockRoute)
          }, label: {
            Image(systemName: "plus")
          })
        }
      }
    }
  }
}

struct RouteListView_Previews: PreviewProvider {
  static var previews: some View {
    RouteListView(routeListViewModel: RouteListViewModel())
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
