//
//  Forecast.swift
//  Weather Reporter Lite
//
//  Created by roux g. buciu on 2016-11-18.
//  Copyright © 2016 ACME Labs. All rights reserved.
//

import UIKit
import Alamofire

var futureForecasts = [Forecast]()

class Forecast {
    
    private var _date: String!
    private var _weatherType: String!
    private var _highTemp: String!
    private var _lowTemp: String!
    //private var _futureForecasts = [Forecast]()
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        
        return _date
    }
    
    var weatherType: String {
        if _weatherType == nil {
            _weatherType = ""
        }
        
        return _weatherType
    }
    
    var highTemp: String {
        if _highTemp == nil {
            _highTemp = ""
        }
        
        return _highTemp
    }
    
    var lowTemp: String {
        if _lowTemp == nil {
            _lowTemp = ""
        }
        
        return _lowTemp
    }
    
    /* var futureForecasts: [Forecast] {
        if _futureForecasts == nil {
            _futureForecasts = [Forecast]()
        }
        
        return _futureForecasts
    }*/
    
    init(weatherDict: Dictionary<String, AnyObject>) {
        
        if let temp = weatherDict["temp"] as? Dictionary<String, AnyObject> {
            
            if let min = temp["min"] as? Double {
                self._lowTemp = "\(round(min - 273.15))"
            }
            
            if let max = temp["max"] as? Double {
                self._highTemp = "\(round(max - 273.15))"
            }
        }
        
        if let weather = weatherDict["weather"] as? [Dictionary<String, AnyObject>] {
            
            if let main = weather[0]["main"] as? String {
                self._weatherType = main
            }
        }
        
        if let date = weatherDict["dt"] {
            let unixConvertedDate = Date(timeIntervalSince1970: date as! TimeInterval)
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .full
            dateFormatter.dateFormat = "EEEE"
            dateFormatter.timeStyle = .none
            self._date = unixConvertedDate.dayOfTheWeek()
        }
    }
}

extension Date {
    
    func dayOfTheWeek() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self)
    }
}
