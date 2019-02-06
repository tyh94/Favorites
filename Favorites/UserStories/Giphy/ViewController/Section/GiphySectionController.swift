//
//  GiphySectionController.swift
//  Favorites
//
//  Created by Татьяна on 02/11/2018.
//  Copyright © 2018 Татьяна. All rights reserved.
//

import UIKit
import IGListKit

let kCellOffset = CGFloat(1)

class GiphySectionController: ListBindingSectionController<ListDiffable>, ListBindingSectionControllerDataSource {
    
    override init() {
        super.init()
        dataSource = self
        minimumLineSpacing = kCellOffset
        minimumInteritemSpacing = kCellOffset
    }
    
    // MARK: ListBindingSectionControllerDataSource
    
    func sectionController(_ sectionController: ListBindingSectionController<ListDiffable>,
                           viewModelsFor object: Any) -> [ListDiffable] {
        if let object = object as? GiphySectionControllerObject {
            return object.cellObjects
        }
        return []
    }
    
    func sectionController(_ sectionController: ListBindingSectionController<ListDiffable>,
                           cellForViewModel viewModel: Any,
                           at index: Int) -> UICollectionViewCell & ListBindable {
        return collectionContext?.dequeueReusableCell(withNibName: String(describing: GiphyCollectionViewCell.self),
                                                      bundle: nil,
                                                      for: sectionController,
                                                      at: index) as! GiphyCollectionViewCell
    }
    
    func sectionController(_ sectionController: ListBindingSectionController<ListDiffable>,
                           sizeForViewModel viewModel: Any,
                           at index: Int) -> CGSize {
        let countCells = CGFloat(3.0)
        let width = (collectionContext?.containerSize.width)! - kCellOffset * (countCells - 1.0)
        let cellWidth = width / 3.0
        return CGSize(width: cellWidth, height: cellWidth)
    }

}
