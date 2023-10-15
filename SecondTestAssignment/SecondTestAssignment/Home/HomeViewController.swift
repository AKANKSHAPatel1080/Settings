//
//  HomeViewController.swift
//  SecondTestAssignment
//
//  Created by IOS Training 2 on 16/07/22.
//

import UIKit

class HomeViewController: UIViewController {

    let HomeItems = ["Ascending", "Descending"]
    let images = ["1","2","3","4","5","6"]
//    images.sorted(by: >)
    //    images.sorted(by: <)

    

    @IBOutlet weak var HomeTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        HomeTableView.delegate = self
        HomeTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
}

extension HomeViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return HomeItems.count
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init()
        cell.textLabel?.text = HomeItems[indexPath.row]
        cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let ascenddescendNav = storyboard.instantiateViewController(withIdentifier: "AscendDescendViewController") as! AscendDescendViewController
        
        if indexPath.row == 0{
            print("Ascending is Selected")
           print(self.images.sorted(by: <))
            ascenddescendNav.getImage(emptyImage: self.images.sorted(by: <))

            navigationController?.pushViewController(ascenddescendNav, animated: true)
        }
        if indexPath.row == 1{
            print("Descending is Selected")
            print(self.images.sorted(by: >))
            ascenddescendNav.getImage(emptyImage: self.images.sorted(by: >))
            navigationController?.pushViewController(ascenddescendNav, animated: true)
        }
    }
    
}
