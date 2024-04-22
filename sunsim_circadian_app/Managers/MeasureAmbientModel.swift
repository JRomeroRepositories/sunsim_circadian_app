//
//  MeasureAmbientModel.swift
//  sunsim_circadian_app
//
//  Created by J. Romero on 2024-04-20.
//

import Foundation
import SwiftUI
import Luxometer

class IlluminanceViewModel: ObservableObject {
    private var luxometer: Luxometer?
    @Published var illuminance: Double = 0

    init() {
        luxometer = Luxometer()

        luxometer?.capturedIlluminance = { [weak self] value in
            DispatchQueue.main.async {
                self?.illuminance = value
            }
        }
    }

    func startCapturing() {
        luxometer?.startMeasurement()
    }

    func stopCapturing() {
        luxometer?.stopMeasurement()
    }
}
