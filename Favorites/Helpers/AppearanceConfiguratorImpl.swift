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
        navigationBarAppearace.tintColor = UIColor(red: 107.0 / 255.0,
                                                   green: 71.0 / 255.0,
                                                   blue: 219.0 / 255.0,
                                                   alpha: 1.0)
        navigationBarAppearace.barTintColor =  UIColor(red: 217.0 / 255.0,
                                                       green: 217.0 / 255.0,
                                                       blue: 217.0 / 255.0,
                                                       alpha: 1.0)
        let labelAppearence = UILabel.appearance()
        labelAppearence.textColor = UIColor(red: 107.0 / 255.0,
                                            green: 71.0 / 255.0,
                                            blue: 219.0 / 255.0,
                                            alpha: 1.0)
    }
}
