//
//  WeatherRow.swift
//  sunsim_circadian_app
//
//  Created by J. Romero on 2024-04-21.
//

import SwiftUI

struct WeatherRow: View {
    var logo: String
    var name: String
    var value: String
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: logo)
                .font(.title2)
                .frame(width:20, height: 20)
                .padding()
                .background(Color(hue:1.0, saturation:0.0, brightness:0.88))
                .cornerRadius(50)
            
            VStack(alignment: .leading, spacing:8) {
                Text(name)
                    .font(.caption)
                
                Text(value)
                    .bold()
                    .font(.title)
            }
        }
    }
}

struct weatherRow_Previews: PreviewProvider {
    static var previews: some View {
        WeatherRow(logo:"thermometer", name: "Feels like", value: "8")
    }
}

//#Preview {
//    WeatherRow()
//}
