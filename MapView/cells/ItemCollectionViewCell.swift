//
//  ItemCollectionViewCell.swift
//  MapView
//
//  Created by shahzod on 3/2/21.
//  Copyright © 2021 shahzod. All rights reserved.
//

import UIKit

class ItemCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 10
    }

}
