//
//  taxiAppApp.swift
//  taxiApp
//
//  Created by Vladut Mihai Poncea on 24.06.2022.
//

import SwiftUI
import GoogleMaps

@main
struct taxiAppApp: App {
    
    init() {
        GMSServices.provideAPIKey("AIzaSyCTeta9MsiDgoSlPKdwexCySAGEAMCDtRs")
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                Home()
                    .preferredColorScheme(.light)
            }
        }
    }
}
