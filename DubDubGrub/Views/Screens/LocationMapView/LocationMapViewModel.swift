//
//  LocationMapViewModel.swift
//  DubDubGrub
//
//  Created by Kvng Eko on 8/1/23.
//

import MapKit

final class LocationMapViewModel: ObservableObject {
    
    @Published var alertItem: AlertItem?
    
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.331516, longitude: -121.891054), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    
    var deviceLocationManager: CLLocationManager?
    
    func checkIfLocationServicesIsEnabled() {
        if CLLocationManager.locationServicesEnabled() {
            deviceLocationManager = CLLocationManager()
        } else {
            
        }
    }
    
    func checkLocationAuthorization() {
        guard let deviceLocationManager = deviceLocationManager else { return }
        
        switch deviceLocationManager.authorizationStatus {
        case .notDetermined:
            deviceLocationManager.requestWhenInUseAuthorization()
        case .restricted:
//            show alert
        case .denied:
            //            show alert
        case .authorizedAlways, .authorizedWhenInUse:
            break
        @unknown default:
            break
        }
    }

    
    func getLocations(for locationManager: LocationManager) {
        CloudKitManager.getLocations { result in
            DispatchQueue.main.async { [self] in
                switch result {
                case .success(let locations):
                    locationManager.locations = locations
                case .failure(_):
                    alertItem = AlertContext.unableToGetLocations
                }
            }
        }
    }
}
