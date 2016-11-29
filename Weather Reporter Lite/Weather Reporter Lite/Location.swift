//
//  Location.swift
//  Weather Reporter Lite
//
//  Created by roux g. buciu on 2016-11-21.
//  Copyright © 2016 ACME Labs. All rights reserved.
//

import Foundation
import CoreLocation

class Location {
    
    static var sharedInstance = Location()
    
    private init() {}
    
    var latitude: Double!
    var longitude: Double!
    
}
