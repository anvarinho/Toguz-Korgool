//
//  HapticManager.swift
//  Toguz Korgool
//
//  Created by Anvar Jumabaev on 15.05.21.
//

import Foundation
import SwiftUI

class HapticManager {
    static let instance = HapticManager()
    func notification(type: UINotificationFeedbackGenerator.FeedbackType){
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(type)
    }
    func impact(style: UIImpactFeedbackGenerator.FeedbackStyle){
        let generator = UIImpactFeedbackGenerator(style: style)
        generator.impactOccurred()
    }
}
