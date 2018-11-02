//
//  MainViewOutput.swift
//  Favorites
//
//  Created by Татьяна on 29/10/2018.
//  Copyright © 2018 Татьяна. All rights reserved.
//

protocol MainViewOutput: AnyObject {

    func moduleWasLoaded()
    
    func didSelect(object: MainCollectionViewCellObject)
    
}
