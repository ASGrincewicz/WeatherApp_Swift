//
//  OpenWeatherMapController.swift
//  WeatherApp
//
//  Created by Aaron Grincewicz on 7/17/23.
//

import Foundation

private enum API{
	static let key = "f77eb726b6a704fafdca17b257704019"
}


class OpenWeatherMapController: WebServiceController{
	func fetchWeatherData(for city: String, completionHandler: @escaping(String?, WebServiceControllerError?) -> Void) {
		
		let endpoint = "https://api.openweathermap.org/data/2.5/find?q=\(city)&units=imperial&appid=\(API.key)"
		
		guard let safeURLString = endpoint.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed),
			  let endpointURL = URL(string: safeURLString)
		else{
			completionHandler(nil, WebServiceControllerError.invalidURL(endpoint))
			return
		}
		
		let dataTask = URLSession.shared.dataTask(with: endpointURL){
			(data, response, error) in
			guard error == nil
			else{
				completionHandler(nil, WebServiceControllerError.forwarded(error!))
				return
			}
			guard let responseData = data
			else{
				completionHandler(nil, WebServiceControllerError.invalidPayload(endpointURL))
				return
			}
			
			// decode JSON
			let decoder = JSONDecoder()
			do{
				let weatherList = try decoder.decode(OpenWeatherMapContainer.self, from: responseData)
				guard let weatherInfo = weatherList.list?.first,
					  let weather = weatherInfo.weather.first?.main,
					  let temperature = weatherInfo.main.temp
				else{
					completionHandler(nil, WebServiceControllerError.invalidPayload(endpointURL))
					return
				}
					// compose weather information
				let weatherDescription = "\(weather) \(temperature) °F"
				completionHandler(weatherDescription, nil)
			}
			catch let error {
				completionHandler(nil, WebServiceControllerError.forwarded(error))
			}
		}
		dataTask.resume()

	}
		
}
