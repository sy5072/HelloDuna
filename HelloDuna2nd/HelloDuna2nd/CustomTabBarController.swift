//
//  CustomTabBarController.swift
//  HelloDuna2nd
//
//  Created by Seungyun Kim on 2022/07/11.
//

import UIKit

class CustomTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTabbar()
    }
    
    func setTabbar() {
        guard let cyanVC = storyboard?.instantiateViewController(withIdentifier: "CyanVC") as? CyanVC,
              let indigoVC = storyboard?.instantiateViewController(withIdentifier: "IndigoVC") as? IndigoVC
        else  { return }
        
        cyanVC.tabBarItem.title = "Home"
        cyanVC.tabBarItem.image = UIImage(systemName: "house")
        cyanVC.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
        
        indigoVC.tabBarItem.title = "Profile"
        indigoVC.tabBarItem.image = UIImage(systemName: "person")
        indigoVC.tabBarItem.selectedImage = UIImage(systemName: "person.fill")
        
        setViewControllers([cyanVC,indigoVC], animated: true)
    }
}
