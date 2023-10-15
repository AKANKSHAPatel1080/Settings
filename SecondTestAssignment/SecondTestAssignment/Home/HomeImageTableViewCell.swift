//
//  HomeImageTableViewCell.swift
//  SecondTestAssignment
//
//  Created by IOS Training 2 on 16/07/22.
//

import UIKit

class HomeImageTableViewCell: UITableViewCell {

   
   
    var myPath : IndexPath?    
   
    @IBOutlet weak var InfoButton: UIButton!
    @IBOutlet weak var RowCellView: UIView!
    @IBOutlet weak var RowCellImageView: UIImageView!
    @IBOutlet weak var RowImageLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func InfoActionButton(_ sender: UIButton) {
        print("Section is :",myPath!.section as Any)
        print("Row is :",myPath!.row as Any)

    }
}
