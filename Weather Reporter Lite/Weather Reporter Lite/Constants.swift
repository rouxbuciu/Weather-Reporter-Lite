//
//  Constants.swift
//  Weather Reporter Lite
//
//  Created by roux g. buciu on 2016-11-17.
//  Copyright © 2016 ACME Labs. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5"
let CURRENT_WEATHER = "/weather?"
let FORECAST_WEATHER = "/forecast/daily?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let USER_LOCATION = "lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)"
let FORECAST_ADDITION = "&cnt=10&mode=json"
let APP_ID = "&appid="
let API_KEY = "c7519cc7b660a532d66edddfc667228b"

let CURRENT_WEATHER_URL = "\(BASE_URL)\(CURRENT_WEATHER)\(USER_LOCATION)\(APP_ID)\(API_KEY)"
let FORECAST_URL = "\(BASE_URL)\(FORECAST_WEATHER)\(USER_LOCATION)\(FORECAST_ADDITION)\(APP_ID)\(API_KEY)"

typealias DownloadComplete = () -> ()
