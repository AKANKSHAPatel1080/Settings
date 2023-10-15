//
//  Service.swift
//  SecondTestAssignment
//
//  Created by IOS Training 3 on 15/07/22.
//  Written By : SHIVANSHU VERMA
//
import Foundation

class Service{
   
    static func data()->Array<Section> {
     return [
        Section(title: "Settings", settingList: [Setting(icon: "SignIn", name:  "Sign - In")]),
           
        
        Section(title: nil, settingList:  [ Setting(icon:"WiFi", name: "WiFi"),
                             Setting(icon: "Bluetooth", name: "Bluetooth"),
                             Setting(icon: "MobileData", name: "Mobile Data"),
                             Setting(icon: "PersonalHotspot", name: "Personal Hotspot")
                            ]),
    
        Section(title: nil, settingList:  [Setting(icon:"Notification", name: "Notification"),
                             Setting(icon: "Sound", name: "Sound"),
                             Setting(icon: "DoNotDistrub", name: "Do Not Distrub"),
                             Setting(icon: "ScreenTime", name: "Screen Time")
                            ]),
        
        
        Section(title: nil, settingList:  [Setting(icon:"General", name: "General"),
                             Setting(icon: "ControlCenter", name: "Control Center"),
                             Setting(icon: "DisplayBrightness", name: "Display & Brightness"),
                             Setting(icon: "Wallpaper", name: "Wallpaper"),
                             Setting(icon: "SiriSearch", name: "Siri & Search"),
                             Setting(icon: "FaceIdPasscode", name: "Face ID & Passcode"),
                             Setting(icon: "EmergencySOS", name: "Emergency SOS"),
                             Setting(icon: "Battery", name: "Battery"),
                             Setting(icon: "Privacy", name: "Privacy")
                            ])
        ]
        
    }
}























//import Foundation
//
//class Service{
//    var services:Array<Section> = []
//
//       public func data(){
//        var setting = Section()
//        setting.title = "Settings"
//
//        setting.settingList = [ Setting(icon: "SignIn", name: "Sign - In")]
//
//        services.append(setting)
//
//        var none = Section()
//        none.settingList = [ Setting(icon:"WiFi", name: "WiFi"),
//                             Setting(icon: "Bluetooth", name: "Bluetooth"),
//                             Setting(icon: "MobileData", name: "Mobile Data"),
//                             Setting(icon: "PersonalHotspot", name: "Personal Hotspot")
//                            ]
//        services.append(none)
//
//        var none1 = Section()
//        none1.settingList = [Setting(icon:"Notification", name: "Notification"),
//                             Setting(icon: "Sound", name: "Sound"),
//                             Setting(icon: "DoNotDistrub", name: "Do Not Distrub"),
//                             Setting(icon: "ScreenTime", name: "Screen Time")
//                            ]
//        services.append(none1)
//
//
//        var none2 = Section()
//        none2.settingList = [Setting(icon:"General", name: "General"),
//                             Setting(icon: "ControlCenter", name: "Control Center"),
//                             Setting(icon: "DisplayBrightness", name: "Display & Brightness"),
//                             Setting(icon: "Wallpaper", name: "Wallpaper"),
//                             Setting(icon:  "SiriSearch", name: "Siri & Search"),
//                             Setting(icon: "FaceIdPasscode", name: "Face ID & Passcode"),
//                             Setting(icon: "EmergencySOS", name: "Emergency SOS"),
//                             Setting(icon: "Battery", name: "Battery"),
//                             Setting(icon: "Privacy", name: "Privacy")
//                            ]
//        services.append(none2)
//    }
//}
