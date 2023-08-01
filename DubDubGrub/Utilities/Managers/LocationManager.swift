//
//  LocationManager.swift
//  DubDubGrub
//
//  Created by Kvng Eko on 8/1/23.
//

import Foundation

final class LocationManager: ObservableObject {
    @Published var locations: [DDGLocation] = []
}
