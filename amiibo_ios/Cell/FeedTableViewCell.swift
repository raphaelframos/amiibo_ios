//
//  FeedTableViewCell.swift
//  amiibo_ios
//
//  Created by Raphael Ferreira Ramos on 22/04/21.
//

import UIKit
import Kingfisher

class FeedTableViewCell: UITableViewCell {


    @IBOutlet weak var imageViewAvatar: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    
    func bind(amiibo: Amiibo){
        labelName.text = amiibo.name
        if let url = URL(string: amiibo.image){
            imageViewAvatar.kf.setImage(with: url)
        }
        
    }
    
}
