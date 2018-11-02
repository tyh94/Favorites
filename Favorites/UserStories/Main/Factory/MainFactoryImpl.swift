//
//  MainFactoryImpl.swift
//  Favorites
//
//  Created by Татьяна on 29/10/2018.
//  Copyright © 2018 Татьяна. All rights reserved.
//

import Foundation

final class MainFactoryImpl: NSObject, MainFactory {

    // MARK: MainFactory
    
    func cellObject() -> [MainCollectionViewCellObject] {
        return [MainCollectionViewCellObject(type: .giphy, text: NSLocalizedString("MAIN_CELL_GIPHY_LABEL", comment: ""))]
    }
    
}
