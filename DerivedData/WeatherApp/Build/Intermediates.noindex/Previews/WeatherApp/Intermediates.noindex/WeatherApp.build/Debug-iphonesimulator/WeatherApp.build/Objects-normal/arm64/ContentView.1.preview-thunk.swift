@_private(sourceFile: "ContentView.swift") import WeatherApp
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/aarongrincewicz/Desktop/POP_Course/WeatherApp/WeatherApp/WeatherApp/ContentView.swift", line: 35)
		ContentView()
	
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/aarongrincewicz/Desktop/POP_Course/WeatherApp/WeatherApp/WeatherApp/ContentView.swift", line: 16)
		VStack {
			TextField(__designTimeString("#252.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "Enter city or ZIP"), text: $input, onEditingChanged: { (_) in
			}) {
				if !self.input.isEmpty {
					self.weatherViewModel.fetch(city: self.input)
				}
			}
			.font(.title)
			
			Divider()
			
			Text("\(weatherViewModel.weatherInfo)")
				.font(.body)
		}.padding()
	
#sourceLocation()
    }
}

import struct WeatherApp.ContentView
import struct WeatherApp.ContentView_Previews

