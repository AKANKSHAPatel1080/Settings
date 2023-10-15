//
//  SettingViewController.swift
//  SecondTestAssignment
//
//  Created by IOS Training 3 on 15/07/22.
//
//  Witten By : SHIVANSHU VERMA

import UIKit

class SettingViewController: UIViewController {
    
    var data: Array<Section> = Service.data()
    
    @IBOutlet weak var tableView: UITableView!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
       
        registerNib()
    }

}

extension SettingViewController{
    private func registerNib(){
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.identifire)
    }
}

extension SettingViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedSettingObj = SelectedSettingVC()
        selectedSettingObj.delegate = self
        
        selectedSettingObj.settingName = data[indexPath.section].settingList[indexPath.row].name
        selectedSettingObj.indexpath = indexPath
        
        self.navigationController?.pushViewController(selectedSettingObj, animated: false)
        print(indexPath)
    }
    
}

extension SettingViewController :UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].settingList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifire) as! CustomTableViewCell
        
        let obj = data[indexPath.section].settingList[indexPath.row]

        cell.configImageLableAtCell(image: obj.icon, name: obj.name)
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return data[section].title ?? " "
    }

}

extension SettingViewController:SettingUpdateNameProtocal{
    
    func settingUpdateName(name: String, path:IndexPath) {
        data[path.section].settingList[path.row].name = name
        self.tableView.reloadData()
    }
    
}


