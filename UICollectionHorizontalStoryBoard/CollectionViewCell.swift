//
//  CollectionViewCell.swift
//  UICollectionHorizontalStoryBoard
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 18/03/21.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet private weak var nameLabel: UILabel!
    
    func configure(with countryName: String){
        nameLabel.text = countryName
    }
}
