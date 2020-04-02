//
//  MoodboardCalculator.swift
//  Moodboard
//
//  Created by Arifin Firdaus on 02/04/20.
//  Copyright © 2020 Arifin Firdaus. All rights reserved.
//

import Foundation

protocol MoodboardCalculator {
    func calculateMood(value: Float) -> MoodType
}

final class MoodboardCalculatorImpl: MoodboardCalculator {
    
    func calculateMood(value: Float) -> MoodType {
        var moodType: MoodType = .sad
        
        if value < 0.3 {
            moodType = .sad
        }
        if value > 0.3 && value < 0.6 {
            moodType = .normal
        }
        if value > 0.6 {
            moodType = .happy
        }
        return moodType
    }
    
}
