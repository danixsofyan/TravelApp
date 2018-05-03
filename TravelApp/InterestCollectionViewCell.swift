//
//  InterestCollectionViewCell.swift
//  TravelApp
//
//  Created by danixsofyan on 03/05/18.
//  Copyright © 2018 Dycode. All rights reserved.
//

import UIKit

class InterestCollectionViewCell: UICollectionViewCell {

    var interest: Interest! {
        didSet{
            UpdateUI()
        }
    }
    
    @IBOutlet weak var FeaturedImage: UIImageView!
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var backgroundColorView: UIView!
    
    private func UpdateUI(){
        TitleLabel.text = interest.title
        FeaturedImage.image =  interest.featuredImage
        backgroundColorView.backgroundColor = interest.color
    }
}
