//
//  TodayWeather.swift
//  FakeWeatther
//
//  Created by Trung on 2/14/20.
//  Copyright © 2020 Trung. All rights reserved.
//

import Foundation

public enum Status: String{
    case Burning
    case Sunshine
    case Clear
    case Partly
    case Cloudy
    case Rain
    case Snow
    case Storm
}

public class DayWeather {
    
    init(currentTemp: Int, maxTemp: Int, minTemp: Int, status: Status) {
        currentTemperature = currentTemp
        maxTemperature = maxTemp
        minTemperature = minTemp
        weatherStatus = status.rawValue
    }
    
    var currentTemperature: Int
    var maxTemperature: Int
    var minTemperature: Int
    var weatherStatus: String
}

public class HourlyWeather{
    
    init(currentTemp: Int, status: Status) {
        currentTemperature = currentTemp
        weatherStatus = status.rawValue
    }
    
    var currentTemperature: Int
    var weatherStatus: String
    
}

func FakeDays() -> [DayWeather] {
    let Today = DayWeather(currentTemp: 23, maxTemp: 27, minTemp: 19, status: Status.Cloudy)
    let Today1 = DayWeather(currentTemp: 22, maxTemp: 27, minTemp: 20, status: Status.Partly)
    let Today2 = DayWeather(currentTemp: 21, maxTemp: 27, minTemp: 18, status: Status.Rain)
    let Today3 = DayWeather(currentTemp: 20, maxTemp: 27, minTemp: 22, status: Status.Partly)
    let Today4 = DayWeather(currentTemp: 24, maxTemp: 29, minTemp: 24, status: Status.Sunshine)
    let Today5 = DayWeather(currentTemp: 25, maxTemp: 30, minTemp: 25, status: Status.Sunshine)
    let Today6 = DayWeather(currentTemp: 26, maxTemp: 31, minTemp: 25, status: Status.Clear)
    let Today7 = DayWeather(currentTemp: 18, maxTemp: 35, minTemp: 18, status: Status.Cloudy)
    let Today8 = DayWeather(currentTemp: 10, maxTemp: 40, minTemp: 10, status: Status.Snow)
    let Today9 = DayWeather(currentTemp: 2, maxTemp: 41, minTemp: 2, status: Status.Burning)
    let Today10 = DayWeather(currentTemp: -23, maxTemp: 42, minTemp: -23, status: Status.Storm)
    
    let Days = [Today,Today1,Today2,Today3,Today4,Today5,Today6,Today7,Today8,Today9,Today10]
    
    return Days
}

func FakeHours() -> [HourlyWeather] {
    let Hour = HourlyWeather(currentTemp: 23, status: Status.Cloudy)
    let Hour1 = HourlyWeather(currentTemp: 22, status: Status.Cloudy)
    let Hour2 = HourlyWeather(currentTemp: 21, status: Status.Cloudy)
    let Hour3 = HourlyWeather(currentTemp: 20, status: Status.Cloudy)
    let Hour4 = HourlyWeather(currentTemp: 19, status: Status.Partly)
    let Hour5 = HourlyWeather(currentTemp: 20, status: Status.Partly)
    let Hour6 = HourlyWeather(currentTemp: 21, status: Status.Partly)
    let Hour7 = HourlyWeather(currentTemp: 22, status: Status.Clear)
    let Hour8 = HourlyWeather(currentTemp: 23, status: Status.Clear)
    let Hour9 = HourlyWeather(currentTemp: 24, status: Status.Partly)
    let Hour10 = HourlyWeather(currentTemp: 25, status: Status.Partly)
    let Hour11 = HourlyWeather(currentTemp: 26, status: Status.Partly)
    
    let Hours = [Hour,Hour1,Hour2,Hour3,Hour4,Hour5,Hour6,Hour7,Hour8,Hour9,Hour10,Hour11]
    
    return Hours
}


