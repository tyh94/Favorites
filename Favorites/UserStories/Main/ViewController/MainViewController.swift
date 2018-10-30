//
//  MainViewController.swift
//  Favorites
//
//  Created by Татьяна on 29/10/2018.
//  Copyright © 2018 Татьяна. All rights reserved.
//

import UIKit
import IGListKit

final class MainViewController: UIViewController, MainViewInput, ListAdapterDataSource {
    

    var viewOutput: MainViewOutput!
    @IBOutlet weak var collectionView: UICollectionView!
    var adapter: ListAdapter!
    var cellObjects = [MainCollectionViewCellObject]()
    
    // MARK: Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollectionView()
        viewOutput.moduleWasLoaded()
    }
    
    // MARK: Private
    
    func configureCollectionView() {
        let idenitfier = String(describing: MainCollectionViewCell.self)
        let nib = UINib(nibName: idenitfier,
                          bundle: Bundle.init(for: MainCollectionViewCell.self))
        collectionView.register(nib,
                                forCellWithReuseIdentifier: idenitfier)
        adapter.collectionView = collectionView
        adapter.dataSource = self
    }
    
    // MARK: MainViewInput
    func update(cellObjects: [MainCollectionViewCellObject]) {
        self.cellObjects = cellObjects
        adapter.reloadData(completion: nil)
    }
    
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
            return CGSize(width: self.view.frame.size.width, height: 60)
        }
    }
    
    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }
}
