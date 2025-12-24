//
//  ScreenshotDetector.swift
//  ModularMainApp
//
//  Created by baman on R 7/12/22.
//

import SwiftUI
import UIKit

/// Attach this to any SwiftUI view to get a callback when the user takes a screenshot.
/// Usage: .onScreenshotDetected { /* handle screenshot */ }
extension View {
    func onScreenshotDetected(_ action: @escaping () -> Void) -> some View {
        self.onReceive(NotificationCenter.default.publisher(for: UIApplication.userDidTakeScreenshotNotification)) { _ in
            action()
        }
    }
}
