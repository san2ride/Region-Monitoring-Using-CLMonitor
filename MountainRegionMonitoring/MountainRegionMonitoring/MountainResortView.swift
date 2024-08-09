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
    
    let artwork = ["beaverCreekResort": "🍸", "Vail_Mountain_Resort": "🥃"]
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Map(position: $position) {
                UserAnnotation()
                
                MapCircle(center: .beaverCreekResort, radius: 50)
                    .foregroundStyle(.blue.opacity(0.4))
                MapCircle(center: .vailMountainVillage, radius: 50)
                                .foregroundStyle(.red.opacity(0.4))
            }
        }
        .sheet(item: $locationManager.locationEvent, content: { event in
            VStack {
                Image(artwork[event.indentifier] ?? "🥃")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text(event.indentifier)
            }
        })
        .task {
            await locationManager.startRegionMonitoring()
        }
    }
}

#Preview {
    MountainResortView()
}
