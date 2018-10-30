//
//  MainViewModel.swift
//  Favorites
//
//  Created by Татьяна on 29/10/2018.
//  Copyright © 2018 Татьяна. All rights reserved.
//

import Foundation

final class MainViewModel: NSObject, MainViewOutput {
    
    weak var viewInput: MainViewInput!
    var factory: MainFactory!
    
    // MARK: MainViewOutput

    func moduleWasLoaded() {
        let cellObjects = factory.cellObject()
        viewInput.update(cellObjects: cellObjects)
    }
    
}
