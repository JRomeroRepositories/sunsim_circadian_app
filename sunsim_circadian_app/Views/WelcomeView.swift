//
//  HomeView.swift
//  sunsim_circadian_app
//
//  Created by J. Romero on 2024-04-20.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    
    var body: some View {
        VStack{
            VStack(spacing: 20) {
                Text("Welcome to SunSim Circadian App")
                    .bold().font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text("Please share your current location to get the weather in area")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()

            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(/*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: .infinity)
        
        
        
        
        //        NavigationView(content: {
//            NavigationLink(destination: MeasureAmbientView())
//            {
//                Text("Test Light Levels")
//            }
//        })
    }
}

#Preview {
    WelcomeView()
}
