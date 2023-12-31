//
//  OpenWeatherMapData.swift
//  WeatherApp
//
//  Created by Aaron Grincewicz on 7/18/23.
//

import Foundation

struct OpenWeatherMapContainer: Codable{
	var list: [OpenWeatherMapData]?
}

struct OpenWeatherMapData: Codable{
	var weather: [OpenWeatherMapWeather]
	var main: OpenWeatherMapMain
}

struct OpenWeatherMapWeather: Codable{
	var id: Int?
	var main: String?
	var description: String?
	var icon: String?
}

struct OpenWeatherMapMain: Codable{
	var temp: Float?
}
