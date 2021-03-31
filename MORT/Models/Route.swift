//
//  Route.swift
//  MORT
//
//  Created by Victor Cuc on 31/03/2021.
//

import FirebaseFirestoreSwift

struct Route: Identifiable, Codable {
  @DocumentID var id: String?
  var title: String
  var locations: [String]
  var noOfStops: Int { locations.count }
}
