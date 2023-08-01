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
}
