//
//  GiphyViewModel.swift
//  Favorites
//
//  Created by Татьяна on 02/11/2018.
//  Copyright © 2018 Татьяна. All rights reserved.
//

import UIKit

class GiphyViewModel: NSObject, GiphyViewOutput {
    
    weak var viewInput: GiphyViewInput!
    
    // MARK: GiphyViewOutput
    
    func moduleWasLoaded() {
    }

}
