//
//  ContentView.swift
//  ModularMainApp
//
//  Created by baman on R 7/12/22.
//

import SwiftUI
import UIKit
import PrivacyScreenCapture

struct ContentView: View {

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)

            Text("Hello, world!")
           
        }
        .padding()
        // 👇 Screenshot detection here
        .onScreenshotDetected {
            showScreenshotPopup()
        }
       
    }

    private func showScreenshotPopup() {
        guard let rootVC = UIApplication.shared.topViewController() else {
            print("❌ Could not find root view controller")
            return
        }

        let config = PrivacyScreenCaptureConfig(
            backgroundColor: Color.red.opacity(0.85),
            title: "Screenshot Detected",
            description: "Taking screenshots of this content is not allowed.",
            onDismiss: {
                // ✅ Callback from module
                PrivacyScreenCapturePresenter.dismiss()
                print("❌ Screenshot popup closed by user")
            }
        )

        PrivacyScreenCapturePresenter.present(
            on: rootVC,
            config: config
        )
    }
}
