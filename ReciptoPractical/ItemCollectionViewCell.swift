//
//  ItemCollectionViewCell.swift
//  ReciptoPractical
//
//  Created by Dhanashree🫰🏻 on 29/02/24.
//

import UIKit

class ItemCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemDesc: UITextView!
    @IBOutlet weak var itemPrice: UILabel!
    @IBOutlet weak var starImg: UIImageView!
    @IBOutlet weak var claimedBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

}
