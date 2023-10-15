//
//  SelectedSettingVC.swift
//  SecondTestAssignment
//
//  Created by IOS Training 3 on 16/07/22.
//
//  Written By : SHIVANSHU VERMA

import UIKit

class SelectedSettingVC: UIViewController{
    
    var delegate:SettingUpdateNameProtocal?
    var settingName:String?
    var indexpath:IndexPath?
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var settingNameLable: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingNameLable.text = settingName
    }
   
    @IBAction func sumbitButtonAction(_ sender: UIButton) {
        if textField.text != ""{
            self.delegate?.settingUpdateName(name: textField.text!, path:indexpath!)
            self.navigationController?.popViewController(animated: true)
        }
    }
}


extension SelectedSettingVC:UITextFieldDelegate{
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return true
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}


