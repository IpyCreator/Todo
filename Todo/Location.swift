//
//  Location.swift
//  Todo
//

//  Copyright © 2019 Saurabh. All rights reserved.
//

import Foundation
import CoreLocation
struct Location {
    let name: String
     let coordinate: CLLocationCoordinate2D?
    init(name: String,
         coordinate: CLLocationCoordinate2D? = nil) {
        self.name = name
        self.coordinate = coordinate
    }
    
}
