//
//  DubDubGrubApp.swift
//  DubDubGrub
//
//  Created by Kvng Eko on 6/14/23.
//

import SwiftUI

@main
struct DubDubGrubApp: App {
    let locationManager = LocationManager()
    var body: some Scene {
        WindowGroup {
            AppTabView().environmentObject(locationManager)
        }
    }
}
