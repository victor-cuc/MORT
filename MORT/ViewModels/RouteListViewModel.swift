//
//  RouteViewModel.swift
//  MORT
//
//  Created by Victor Cuc on 31/03/2021.
//

import Combine

final class RouteListViewModel: ObservableObject {
  @Published var routeRepository = RouteRepository()
  @Published var routes: [Route] = []
  
  private var cancellables: Set<AnyCancellable> = []
  
  init() {
    routeRepository.$routes
      .assign(to: \.routes, on: self)
      .store(in: &cancellables)
  }
  
  func add(_ route: Route) {
    routeRepository.add(route)
  }
}
