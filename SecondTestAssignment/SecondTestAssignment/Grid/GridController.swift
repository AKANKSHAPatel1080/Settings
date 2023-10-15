//
//  GridController.swift
//  SecondTestAssignment
//
//  Created by IOS Training 2 on 17/07/22.
//

import UIKit

class GridController: UIViewController {
    
    

    @IBOutlet weak var showimage: UIImageView!
    
    var passeddata = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showimage.image = UIImage(named: passeddata)

        // Do any additional setup after loading the view.
    }
    

    

}
