//
//  HabitImageCollectionViewCell.swift
//  habitApp
//
//  Created by Bénédicte Knudson on 1/29/24.
//

import UIKit

class HabitImageCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var habitImage: UIImageView!
    static let identifier = "HabitImageCell"

    static var nib: UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }

    func setImage(image: UIImage, withSelection: Bool){
        if withSelection {
            self.habitImage.image = image.withRenderingMode(.alwaysOriginal)
        }else{
            self.habitImage.image = image.withRenderingMode(.alwaysTemplate)
            self.habitImage.tintColor = UIColor.gray
            
        }
    }

}
