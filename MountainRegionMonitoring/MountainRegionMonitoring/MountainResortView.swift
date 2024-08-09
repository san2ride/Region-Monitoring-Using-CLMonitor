//
//  MountainResortView.swift
//  MountainRegionMonitoring
//
//  Created by Jason Sanchez on 8/9/24.
//

import SwiftUI
import MapKit

struct MountainResortView: View {
    @State private var locationManager = LocationManager.shared
    @State private var position: MapCameraPosition = .userLocation(fallback: .automatic)
    
    let artwork = ["appleCampus": "apple-park", "cupertinoVillage": "cupertino-village"]
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            Map(position: $position) {
                UserAnnotation()
                
                MapCircle(center: .beaverCreekResort, radius: 50)
                    .foregroundStyle(.indigo.opacity(0.4))
                
                MapCircle(center: .vailMountainVillage, radius: 50)
                                .foregroundStyle(.pink.opacity(0.4))
            }
        }
    }
}

#Preview {
    MountainResortView()
}
