//
//  ProfileModel.swift
//  Duna_UIKit_HW1
//
//  Created by Seungyun Kim on 2022/07/20.
//

import Foundation
import UIKit

struct ProfileModel {
    var imageName: String
    var name: String
    var statusMessage: String
    
    func makeImage() -> UIImage? {
        return UIImage(named:  imageName)
    }
}
