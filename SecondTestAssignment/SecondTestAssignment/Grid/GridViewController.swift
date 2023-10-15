//
//  GridViewController.swift
//  SecondTestAssignment
//
//  Created by IOS Training 2 on 16/07/22.
//

import UIKit

class GridViewController: UIViewController {

    @IBOutlet weak var gridcollection: UICollectionView!
    //var photos : Array<String> = []
    
   var photos:[String]=["1","2","3","4"]
    
    public func getPhotos(emptyPhoto:Array<String>){
        
        self.photos = emptyPhoto
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // filldata()
        let nibCell=UINib(nibName: "GridCollectionViewCell", bundle: nil)
        gridcollection.register(nibCell, forCellWithReuseIdentifier: "GridCollectionViewCell")

        // Do any additional setup after loading the view.
    }
    

}

extension GridViewController: UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell=gridcollection.dequeueReusableCell(withReuseIdentifier: "GridCollectionViewCell", for: indexPath)as! GridCollectionViewCell
        cell.cellgrid.image=UIImage(named: photos[indexPath.row])
        //cell.contentView.backgroundColor = .blue
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let gridController = self.storyboard?.instantiateViewController(withIdentifier: "GridController") as! GridController
        gridController.passeddata = photos[indexPath.row]
        self.navigationController?.pushViewController(gridController, animated: true)
    }
    
    
}

extension GridViewController:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return -20
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        let abc = self.view.frame.width
        return CGSize(width: abc/4, height: abc/4)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets{
        return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 2)
    }
    
}
