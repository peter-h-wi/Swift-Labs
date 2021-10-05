//
//  ContentView.swift
//  p00-weather
//
//  Created by Samuel Shi on 9/21/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                CurrentWeatherView()

                HourlyWeatherView()

                DailyWeatherView()
            }
        .fullscreenBackground(backgroundGradient)
        }
    }


    var backgroundGradient: LinearGradient {
        LinearGradient(colors: [.blue1, .blue2], startPoint: .top, endPoint: .bottom)
    }

    var temperatureGradient: LinearGradient {
        LinearGradient(colors: [.green, .orange, .red], startPoint: .leading, endPoint: .trailing)
    }
}



struct DailyWeatherView(): View {
    var body: some View {

        VStack (alignment: .leading) {
            Label("10-Day FORECAST", systemImage: "calendar")
                .font(.subheadline)

            // After having more space, it moved to the leading.

            ForEach(DailyWeather.week) { day in
                VStack {
                    Divider()

                    HStack {
                        Text(day.day)

                        Spacer()

                        Image(systemName: day.iconName)
                            .font(.headline)
                            .foregroundcolor(.yellow)
                            .padding(.trailing, 35)
                        
                        Text(day.formattedLow)
                        
                        Capsule()
                            .fill(backgroundGradient)
                            .frame(width: 100, height: 3)

                        Text(day.formattedHigh)
                    }
                }
            }
        }
        .padding()
        .background(Color.blue3)
        .cornerRadius(10)
        .padding([.horizontal, .bottom])
    }
        
}

struct HourlyWeatherView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Sunny conditions will continue all day.")

            Divider()

            ScrollVeiw(.horizontal) {
                HStack {
                    ForEach(HourlyWeather.day) { day in 
                        VStack(spacing: 10) {
                            Text(day.time)

                            Image(systemName: day.iconName)
                                .font(.title2)
                                .foregroundcolor(.yellow)
                            
                            Text(day.formattedTemperature)
                                .font(.title3)
                        }
                        .padding(.trailing)
                    }
                }
            }
        }
        .padding()
        .background(Color.blue3)
        .cornerRadius(10)
        .padding()
    }
}


struct CurrentWeatherView: View {
    var body: some view {
        VStack {
            Text("Chapel Hill")
                .font(.title)
            Text("70 degrees")
                .font(.system(size: 90, weight: .thin, design: .default))
            Text("Sunny")
                .font(.title3)
                .fontWeight(.semibold)

            HStack {
                Text("H:76 degree")
                Text("L:51 degree")
            }
            .font(.title2)
        }
        .shadow(radius: 10)
        .padding(.vertical, 40)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
    }
}
