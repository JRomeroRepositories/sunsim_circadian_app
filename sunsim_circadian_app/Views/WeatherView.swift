//
//  WeatherView.swift
//  sunsim_circadian_app
//
//  Created by J. Romero on 2024-04-21.
//

import SwiftUI

struct WeatherView: View {
    var weather: ResponseBody
    
    var body: some View {
        ZStack(alignment: .leading) {
            VStack {
                // Location and Date Heading
                VStack(alignment: .leading, spacing: 5) {
                    Text(weather.name)
                        .bold().font(.title)
                    //Change to day of week
                    Text("Today, \(Date().formatted(.dateTime.month().day().hour().minute()))")
                        .fontWeight(.light)
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .padding()
                
                Spacer()
                
                VStack {
                    //Icon and FeelsLike Temp
                    HStack {
                        VStack(spacing:20) {
                            Image(systemName: "sun.max")
                                .font(.system(size: 40))
                            Text(weather.weather[0].main)
                        }
                        .frame(width: 150, alignment: .leading)
                        Text(weather.main.feelsLike
                            .roundDouble() + "°")
                        .font(.system(size: 100))
                        .fontWeight(.bold)
                        .padding()
                    }
                    
                    Spacer()
                        .frame(height: 80)
                    
                    // City Image
                    AsyncImage(url: URL(string: "https://cdn.pixabay.com/photo/2020/01/24/21/33/city-4791269_960_720.png")) { image in image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width:350)
                    } placeholder: {
                        ProgressView()
                    }
                    
                    Spacer()
                }
                .padding()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                
                VStack {
                    Spacer()
                    
                    VStack(alignment: .leading, spacing:20) {
                        Text("Weather Now")
                            .bold().padding(.bottom)
                        HStack {
                            WeatherRow(logo: "thermometer", name: "Low", value: (weather.main.tempMin.roundDouble() + "°"))
                            
                            Spacer()
                            
                            WeatherRow(logo: "thermometer", name: "High", value: (weather.main.tempMax.roundDouble() + "°"))
                        }
                        HStack {
                            WeatherRow(logo: "wind", name: "Wind Speed", value: (weather.wind.speed.roundDouble() + "m/s"))
                            
                            Spacer()
                            
                            WeatherRow(logo: "humidity", name: "Humidity", value: (weather.main.humidity.roundDouble() + "°"))
                        }
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .padding(.bottom, 20)
                    .foregroundColor(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
                    .background(.white)
                    .cornerRadius(20, corners: [.topLeft, .topRight])
                }
                
            }
            .edgesIgnoringSafeArea(.bottom)
            .background(Color(hue: 0.656,
                              saturation: 0.787,
                              brightness: 0.354))
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        }
    }
}


struct WeatherView_Previews: PreviewProvider {
    static var previews:some View {
        WeatherView(weather: previewWeather)
    }
}

//#Preview {
//    WeatherView()
//}
