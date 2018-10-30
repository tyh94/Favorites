//
//  MainViewInput.swift
//  Favorites
//
//  Created by Татьяна on 29/10/2018.
//  Copyright © 2018 Татьяна. All rights reserved.
//

import Foundation

protocol MainViewInput: AnyObject {

    func update(cellObjects: [MainCollectionViewCellObject])
    
}
