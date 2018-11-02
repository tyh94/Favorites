//
//  MainViewModel.swift
//  Favorites
//
//  Created by Татьяна on 29/10/2018.
//  Copyright © 2018 Татьяна. All rights reserved.
//

import IGListKit

final class MainViewModel: NSObject, MainViewOutput {
    
    
    weak var viewInput: MainViewInput!
    var factory: MainFactory!
    var router: MainRouter!
    
    // MARK: MainViewOutput

    func moduleWasLoaded() {
        let cellObjects = factory.cellObject()
        viewInput.update(cellObjects: cellObjects)
    }
    
    func didSelect(object: MainCollectionViewCellObject) {
        router.openGiphyModul()
    }
}
