//
//  MainFactory.swift
//  Favorites
//
//  Created by Татьяна on 29/10/2018.
//  Copyright © 2018 Татьяна. All rights reserved.
//

import UIKit

enum MainCellType {
    case giphy
}

protocol MainFactory: AnyObject {

    func cellObject() -> [MainCollectionViewCellObject]
    
}
