//
//  MoodboardViewController.swift
//  Moodboard
//
//  Created by Arifin Firdaus on 02/04/20.
//  Copyright © 2020 Arifin Firdaus. All rights reserved.
//

import UIKit

protocol MoodboardView {
    func setMoodLabelText(moodType: MoodType)
}

class MoodboardViewController: UIViewController, MoodboardView {
    @IBOutlet weak var moodLabel: UILabel!
    @IBOutlet weak var moodEmojiLabel: UILabel!
    
    private var presenter: MoodboardPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        instantiatePresenter()
    }
    
    private func instantiatePresenter() {
        let model: MoodboardCalculator = MoodboardCalculatorImpl()
        presenter = MoodboardPresenterImpl(model: model, view: self)
    }
    
    @IBAction func sliderDidSlide(_ sender: UISlider) {
        let value = sender.value
        presenter?.getMood(sliderValue: value)
    }
    
    
    // MARK: - MoodboardView
    
    func setMoodLabelText(moodType: MoodType) {
        moodLabel.text = moodType.rawValue
    }
}
