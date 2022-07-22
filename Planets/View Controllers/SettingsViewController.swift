//
//  SettingsViewController.swift
//  Planets
//
//  Created by Andrew R Madsen on 8/2/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateViews()
    }
    
    @IBAction func changeShouldShowPluto(_ sender: UISwitch) {
        
        // Set whether Pluto should be a planet or not in UserDefaults
        let userDefaults = UserDefaults.standard
        // Access UserDefaults - userDefaults.
        // Set a Bool - .set(
        // Set Bool to if the Pluto as a planet is true or false - sender.isOn
        // Because of extension on String in SettingsKey - .shouldShowPluto key (makes sure there won't be any typos)
        // Can also do String.shouldShowPlutoKey, almost like a enum
        userDefaults.set(sender.isOn, forKey: .shouldShowPlutoKey)
    }
    
    private func updateViews() {
        // Get whether Pluto should be a planet or not from userDefauults
        let userDefaults = UserDefaults.standard
        shouldShowPlutoSwitch.isOn = userDefaults.bool(forKey: .shouldShowPlutoKey)
    }
    
    @IBOutlet weak var shouldShowPlutoSwitch: UISwitch!
}
