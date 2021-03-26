//
//  RouteViews.swift
//  MORT
//
//  Created by Victor Cuc on 26/03/2021.
//

import SwiftUI

struct RouteButton: View {
  var width: CGFloat?
  let height: CGFloat
  
  var body: some View {
    Button(action: {}, label: {
      ZStack {
        Image("RouteImage")
          .resizable()
          .scaledToFill()
          .frame(width: width, height: height)
          .clipped()
          .overlay(
            VStack (alignment: .leading) {
              HStack {
                StopNumber(size: 28, color: .white)
                Spacer()
                SaveButton()
              }
              .shadow(color: .black, radius: 15, x: 1, y: 2)
              Spacer()
              Text("Route Name")
                .foregroundColor(.white)
                .font(width ?? 300 > 200 ? .title : .title2)
                .fontWeight(.semibold)
                .shadow(color: .black, radius: 7, x: 1, y: 2)
            }
            .padding()
          )
          .cornerRadius(14.0)
      }
    })
    
  }
}

struct StopNumber: View {
  let size: CGFloat
  let color: Color
  
  var body: some View {
    HStack {
      Image(systemName: "mappin.circle.fill")
        .font(.system(size: size))
      Text("22")
        .font(.title3)
        .bold()
    }
    .foregroundColor(color)
  }
}

struct SaveButton: View {
  var body: some View {
    Button(action: {
    }, label: {
      Image(systemName: "heart.fill")
        .font(.system(size: 37))
        .accentColor(Color("HeartColor"))
    })
  }
}

struct RouteViews_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
      StopNumber(size: 23, color: .accentColor)
      SaveButton()
      RouteButton(width: 200, height: 170)
    }
    .previewedInAllColorSchemes
  }
}
