//
//  GiphySectionControllerObject.swift
//  Favorites
//
//  Created by Татьяна on 02/11/2018.
//  Copyright © 2018 Татьяна. All rights reserved.
//

import IGListKit

class GiphySectionControllerObject: NSObject, ListDiffable {

    var cellObjects = [GiphyCollectionViewCellObject]()
    
    // MARK: ListDiffable
    
    func diffIdentifier() -> NSObjectProtocol {
        return self
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        return true
    }
    
}
