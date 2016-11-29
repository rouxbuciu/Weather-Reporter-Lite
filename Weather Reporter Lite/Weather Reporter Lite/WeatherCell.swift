//
//  WeatherCell.swift
//  Weather Reporter Lite
//
//  Created by roux g. buciu on 2016-11-21.
//  Copyright © 2016 ACME Labs. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {

    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var weatherType: UILabel!
    @IBOutlet weak var highTemp: UILabel!
    @IBOutlet weak var lowTemp: UILabel!
    
    func configureCell(forecast: Forecast) {
        lowTemp.text = "\(forecast.lowTemp)"
        highTemp.text = "\(forecast.highTemp)"
        dayLabel.text = forecast.date
        weatherType.text = forecast.weatherType
        weatherIcon.image = UIImage(named: "\(forecast.weatherType) Mini")
    }

}
