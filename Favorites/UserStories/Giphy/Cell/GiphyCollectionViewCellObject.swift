//
//  GiphyCollectionViewCellObject.swift
//  Favorites
//
//  Created by Татьяна on 02/11/2018.
//  Copyright © 2018 Татьяна. All rights reserved.
//

import UIKit
import IGListKit

class GiphyCollectionViewCellObject: NSObject, ListDiffable {

    // MARK: ListDiffable
    func diffIdentifier() -> NSObjectProtocol {
        return self
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        return true
    }
    
}
