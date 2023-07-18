//
//  WebServiceController.swift
//  WeatherApp
//
//  Created by Aaron Grincewicz on 7/17/23.
//

import Foundation

public enum WebServiceControllerError: Error{
	case invalidURL(String)
	case invalidPayload(URL)
	case forwarded(Error)
}

public protocol WebServiceController{
	func fetchWeatherData(for city: String, completionHandler: @escaping(String?, WebServiceControllerError? )-> Void)
}
