//
//  CLMonitor.CircularGeographicCondition+Ext.swift
//  MountainRegionMonitoring
//
//  Created by Jason Sanchez on 8/9/24.
//

import Foundation
import MapKit

extension CLMonitor.CircularGeographicCondition {
    static var beaverCreekResort: CLMonitor.CircularGeographicCondition {
        CLMonitor.CircularGeographicCondition(center: .beaverCreekResort, radius: 50)
    }
    
    static var vailMountainVillage: CLMonitor.CircularGeographicCondition {
        CLMonitor.CircularGeographicCondition(center: .vailMountainVillage, radius: 50)
    }
}
