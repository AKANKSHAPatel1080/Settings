//
//  AscendDescendViewController.swift
//  SecondTestAssignment
//
//  Created by IOS Training 2 on 16/07/22.
//

import UIKit

class AscendDescendViewController: UIViewController {

    var fillImage : Array<String> = []
    @IBOutlet weak var AscendDescendTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
     AscendDescendTableView.delegate = self
        AscendDescendTableView.dataSource = self
        
    }
    public func getImage(emptyImage:Array<String>){
        self.fillImage = emptyImage
    }

}

extension AscendDescendViewController : UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fillImage.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = AscendDescendTableView.dequeueReusableCell(withIdentifier: "ImageTableCell") as! HomeImageTableViewCell
        let myImage = fillImage[indexPath.row]
        cell.myPath = indexPath
        cell.RowImageLabel.text = myImage
        cell.RowCellImageView.image = UIImage(named: myImage)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let gotoGrid = storyboard.instantiateViewController(withIdentifier: "GridViewController") as! GridViewController
        navigationController?.pushViewController(gotoGrid, animated: true)
     
        let myPhoto = fillImage[indexPath.row]
        // For Simplicity I'm not using Map function but the example is below
        let tranformPhoto : Array<String> =  [String(myPhoto),String(myPhoto),String(myPhoto),String(myPhoto)]
        print(fillImage[indexPath.row])
        gotoGrid.getPhotos(emptyPhoto: tranformPhoto)
        
    }
}



/*
  This is a Higher Order Function Understand from below example

var dj77 = ["Jehovah","Creator","Most High", "He causes to become","Prince of Peace : Jesus", "YHWH"]
var trueKing = "Jesus Christ"

print(dj77.map({ (a) -> String in
    return trueKing
}))
*/
