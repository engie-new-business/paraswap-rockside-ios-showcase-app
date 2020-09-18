//
//  UIImageView+extension.swift
//  SmartWallet
//
//  Created by Frederic DE MATOS on 12/05/2020.
//  Copyright © 2020 Frederic DE MATOS. All rights reserved.
//

import UIKit


extension UIImageView {
  func setImageColor(color: UIColor) {
    let templateImage = self.image?.withRenderingMode(.alwaysTemplate)
    self.image = templateImage
    self.tintColor = color
  }
    
    
    public func imageFromUrl(urlString: String, completionHandler: (()-> Void)? = nil) {
        self.image = nil
        URLSession.shared.dataTask(with: NSURL(string: urlString)! as URL, completionHandler: { (data, response, error) -> Void in

            if error != nil {
                completionHandler?()
                return
            }
            
            DispatchQueue.main.async(execute: { () -> Void in
                self.image = UIImage(data: data!)
                completionHandler?()
            })

        }).resume()
    }
}
