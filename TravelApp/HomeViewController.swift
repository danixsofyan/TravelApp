//
//  HomeViewController.swift
//  TravelApp
//
//  Created by danixsofyan on 03/05/18.
//  Copyright © 2018 Dycode. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var CollectionView: UICollectionView!
    @IBOutlet weak var BackgroundImageView: UIImageView!
    @IBOutlet weak var TitleLabel: UILabel!
    
    private var interest = Interest.fetchInterests()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    private struct Storyboard {
        static let CellIdentifier = "Interest Cell"
    }
}

extension HomeViewController: UICollectionViewDataSource{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return interest.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Storyboard.CellIdentifier, for: indexPath) as! InterestCollectionViewCell
        
        cell.interest = self.interest[indexPath.item]
        return cell
    }
}
