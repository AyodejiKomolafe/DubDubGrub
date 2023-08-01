//
//  DubDubGrubApp.swift
//  DubDubGrub
//
//  Created by Kvng Eko on 6/14/23.
//

import SwiftUI

@main
struct DubDubGrubApp: App {
    var locationManager = LocationManager()
    var body: some Scene {
        WindowGroup {
            AppTabView().environmentObject(locationManager)
        }
    }
}
