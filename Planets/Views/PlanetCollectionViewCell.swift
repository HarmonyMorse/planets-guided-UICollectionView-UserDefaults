//
//  PlanetCollectionViewCell.swift
//  Planets
//
//  Created by Andrew R Madsen on 8/2/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

class PlanetCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    
        // MARK: - Changes
    /*
    
    // The planet that the cell should display in its views
    var planet: Planet? {
        didSet {
            // Anytime the planet's value changes, run this code
            updateViews()
        }
    }
    
    func updateViews() {
        imageView.image = planet?.image
        textLabel.text = planet?.name
    }*/
    
}
