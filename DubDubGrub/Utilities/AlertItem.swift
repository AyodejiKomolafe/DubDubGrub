//
//  AlertItem.swift
//  DubDubGrub
//
//  Created by Kvng Eko on 7/26/23.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}


struct AlertContext {
    //MARK: Mapview Errors
    static let unableToGetLocations = AlertItem(title: Text("Locations Error"), message: Text("Unable to retrieve locations at this time .\n Please try again"), dismissButton: .default(Text("OK")))
    
    static let locationRestricted = AlertItem(title: Text("Locations Restricted"), message: Text("Your Location is restricted. This may be due to parental controls."), dismissButton: .default(Text("OK")))
    
    static let locationDenied = AlertItem(title: Text("Locations Denied"), message: Text("Dub Dub Grub does not have access to your location. To change that go to your phone's Settings> Dub Dub Grub > Location"), dismissButton: .default(Text("OK")))
    
    static let locationDisabled = AlertItem(title: Text("Location Service Disabled"), message: Text("Your phone's location services is disabeld. To change that, go to your phone Settings > Privacy > Location Services"), dismissButton: .default(Text("OK")))
}
