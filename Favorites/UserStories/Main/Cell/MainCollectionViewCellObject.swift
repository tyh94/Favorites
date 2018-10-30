//
//  MainCollectionViewCellObject.swift
//  Favorites
//
//  Created by Татьяна on 29/10/2018.
//  Copyright © 2018 Татьяна. All rights reserved.
//

import UIKit
import IGListKit

class MainCollectionViewCellObject: NSObject, ListDiffable {

    let type: MainCellType
    let text: String
    
    init(type: MainCellType,
         text: String) {
        self.type = type
        self.text = text
    }
    
    // MARK: ListDiffable
    func diffIdentifier() -> NSObjectProtocol {
        return text as NSObjectProtocol
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        if let object = object as? MainCollectionViewCellObject {
            return text == object.text
        }
        return false
    }
}
