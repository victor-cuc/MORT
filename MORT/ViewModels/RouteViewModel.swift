//
//  RouteViewModel.swift
//  MORT
//
//  Created by Victor Cuc on 31/03/2021.
//

import Combine

final class RouteViewModel: ObservableObject, Identifiable {
  private let routeRepository = RouteRepository()
  @Published var route: Route
  
  var id = ""
  
  private var cancellables: Set<AnyCancellable> = []
  
  init(route: Route) {
    self.route = route
    $route
      .compactMap { $0.id }
      .assign(to: \.id, on: self)
      .store(in: &cancellables)
  }
}
