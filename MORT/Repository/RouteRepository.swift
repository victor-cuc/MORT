//
//  RouteRepository.swift
//  MORT
//
//  Created by Victor Cuc on 31/03/2021.
//

import FirebaseFirestore
import FirebaseFirestoreSwift
import Combine

final class RouteRepository: ObservableObject {
  private let path = "routes"
  private let store = Firestore.firestore()
  @Published var routes: [Route] = []
  
  init() {
    get()
  }
  
  func get() {
    store.collection(path).addSnapshotListener{ (snapshot, error) in
      if let error = error {
        print(error)
        return
      }
      self.routes = snapshot?.documents.compactMap {
        try? $0.data(as: Route.self)
      } ?? []
    }
  }
  
  func add(_ route: Route) {
    do {
      try _ = store.collection(path).addDocument(from: route)
    } catch {
      fatalError("Adding route failed")
    }
  }
}
