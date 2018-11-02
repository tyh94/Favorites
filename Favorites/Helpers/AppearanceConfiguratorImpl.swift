//
//  AppearanceConfiguratorImpl.swift
//  Favorites
//
//  Created by Татьяна on 02/11/2018.
//  Copyright © 2018 Татьяна. All rights reserved.
//

import UIKit

class AppearanceConfiguratorImpl: NSObject, AppearanceConfigurator {

    // MARK: AppearanceConfigurator
    
    func configure() {
        let navigationBarAppearace = UINavigationBar.appearance()
        navigationBarAppearace.tintColor = UIColor(named: "mainColor")
        navigationBarAppearace.barTintColor =  UIColor(named: "navigationBarTintColor")
        let labelAppearence = UILabel.appearance()
        labelAppearence.textColor = UIColor(named: "mainColor")
    }
    
}
