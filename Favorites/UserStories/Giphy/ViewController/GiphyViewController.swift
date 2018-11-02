//
//  GiphyViewController.swift
//  Favorites
//
//  Created by Татьяна on 02/11/2018.
//  Copyright © 2018 Татьяна. All rights reserved.
//

import UIKit
import IGListKit

class GiphyViewController: UIViewController, GiphyViewInput, ListAdapterDataSource {
    
    var viewOutput: GiphyViewOutput!
    @IBOutlet weak var collectionView: UICollectionView!
    var adapter: ListAdapter!
    var cellObjects = [MainCollectionViewCellObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewOutput.moduleWasLoaded()
    }
    
    // MARK: GiphyViewInput

    // MARK: ListAdapterDataSource
    
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return cellObjects
    }
    
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        return ListSingleSectionController(nibName: String(describing: MainCollectionViewCell.self),
                                           bundle: nil,
                                           configureBlock: { (cellObject, cell) in
                                            if let cell = cell as? MainCollectionViewCell {
                                                cell.bindViewModel(cellObject)
                                            }
                                            
        }) { (cellObject, contect) -> CGSize in
            return CGSize(width: self.view.frame.size.width / 3.0, height: 60)
        }
    }
    
    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }
}
