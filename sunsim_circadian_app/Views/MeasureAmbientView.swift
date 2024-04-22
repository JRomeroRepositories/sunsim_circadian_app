//
//  MeasureAmbientView.swift
//  sunsim_circadian_app
//
//  Created by J. Romero on 2024-04-20.
//

import SwiftUI

struct MeasureAmbientView: View {
    @StateObject private var viewModel = IlluminanceViewModel()
    var body: some View {
        VStack {
            Text("Ambient light illuminance: \(viewModel.illuminance, specifier: "%.2f") lux")
            Button("Start Measurement") {
                viewModel.startCapturing()
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(8)

            Button("Stop Measurement") {
                viewModel.stopCapturing()
            }
            .padding()
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
    }
}

#Preview {
    MeasureAmbientView()
}
