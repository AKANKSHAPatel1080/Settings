//
//  CustomTableViewCell.swift
//  SecondTestAssignment
//
//  Created by IOS Training 3 on 15/07/22.
//
//  Written By : SHIVANSHU VERMA

import UIKit

class CustomTableViewCell: UITableViewCell {
    static var identifire = "CustomTableViewCell"

    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var cellLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    public func configImageLableAtCell(image settingImageName:String, name settingName:String){
        cellImageView.image = UIImage(named: settingImageName)
        cellLable.text = settingName
    }
                          
    static func nib()->UINib{
        return UINib(nibName: "CustomTableViewCell", bundle: nil)
    }
    
}
