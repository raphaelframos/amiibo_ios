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
    @IBOutlet weak var labelCharacter: UILabel!
    @IBOutlet weak var labelGameSeries: UILabel!
    
    func bind(amiibo: Amiibo){
        labelName.text = amiibo.name
        labelCharacter.text = amiibo.amiiboSeries
        labelGameSeries.text = amiibo.gameSeries
        if let url = URL(string: amiibo.image){
            imageViewAvatar.kf.setImage(with: url)
        }
        
    }
    
}
