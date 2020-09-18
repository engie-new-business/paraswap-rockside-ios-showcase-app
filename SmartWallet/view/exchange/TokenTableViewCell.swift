//
//  TokenTableViewCell.swift
//  SmartWallet
//
//  Created by Frederic DE MATOS on 27/03/2020.
//  Copyright © 2020 Frederic DE MATOS. All rights reserved.
//

import UIKit

class TokenTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var symbolLabel: UILabel!
    @IBOutlet weak var TokenImage: UIImageView!
    
    public func display(token:Token){
        self.nameLabel?.text = token.symbol
        self.symbolLabel?.text = ""
        
        if let img = token.img {
            self.TokenImage.imageFromUrl(urlString: img) { () in
                if self.TokenImage.image == nil {
                    self.TokenImage.image =  UIImage(named: "green_circle")
                    self.symbolLabel?.text = token.symbol
                }
            }
            
        } else {
            self.TokenImage.image = UIImage(named: "green_circle")
            self.symbolLabel?.text = token.symbol
        }
    }
}
