//
//  MoodboardPresenter.swift
//  Moodboard
//
//  Created by Arifin Firdaus on 02/04/20.
//  Copyright © 2020 Arifin Firdaus. All rights reserved.
//

import Foundation

protocol MoodboardPresenter {
    func getMood(sliderValue: Float)
}

final class MoodboardPresenterImpl: MoodboardPresenter {
    private let model: MoodboardCalculator
    private let view: MoodboardView
    
    init(model: MoodboardCalculator, view: MoodboardView) {
        self.model = model
        self.view = view
    }
    
    func getMood(sliderValue: Float) {
        let moodType = model.calculateMood(value: sliderValue)
        view.setMoodLabelText(moodType: moodType)
    }
}
