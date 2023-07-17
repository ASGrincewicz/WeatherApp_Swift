@_private(sourceFile: "ContentView.swift") import WeatherApp
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/aarongrincewicz/Desktop/POP_Course/WeatherApp/WeatherApp/WeatherApp/ContentView.swift", line: 24)
        ContentView()
    
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/aarongrincewicz/Desktop/POP_Course/WeatherApp/WeatherApp/WeatherApp/ContentView.swift", line: 14)
		VStack{
			TextField(__designTimeString("#6047.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "Enter City"), text: $input ).font(.title)
			Divider()
			Text(input).font(.body)
		}.padding()
    
#sourceLocation()
    }
}

import struct WeatherApp.ContentView
import struct WeatherApp.ContentView_Previews

