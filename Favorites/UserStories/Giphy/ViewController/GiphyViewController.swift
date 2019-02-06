//
//  GiphyViewController.swift
//  Favorites
//
//  Created by Татьяна on 02/11/2018.
//  Copyright © 2018 Татьяна. All rights reserved.
//

import UIKit
import IGListKit

class GiphyViewController: UIViewController, GiphyViewInput, ListAdapterDataSource, UISearchBarDelegate {
    
    var viewOutput: GiphyViewOutput!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var searchBar: UISearchBar!
    var adapter: ListAdapter!
    var sectionObjects = [GiphySectionControllerObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO: Удалить
        let cellObjects = [GiphyCollectionViewCellObject(),GiphyCollectionViewCellObject(),GiphyCollectionViewCellObject(),GiphyCollectionViewCellObject(),GiphyCollectionViewCellObject()]
        let sectionObject = GiphySectionControllerObject()
        sectionObject.cellObjects = cellObjects
        sectionObjects = [sectionObject]
        configureCollectionView()
        viewOutput.moduleWasLoaded()
    }
    
    // MARK: Private
    
    func configureCollectionView() {
        let idenitfier = String(describing: GiphyCollectionViewCell.self)
        let nib = UINib(nibName: idenitfier,
                        bundle: Bundle.init(for: GiphyCollectionViewCell.self))
        collectionView.register(nib,
                                forCellWithReuseIdentifier: idenitfier)
        adapter.collectionView = collectionView
        adapter.dataSource = self
    }
    
    // MARK: GiphyViewInput

    // MARK: ListAdapterDataSource
    
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return sectionObjects
    }
    
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        let section = GiphySectionController()
        return section
    }
    
    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }
    
    // MARK: UISearchBarDelegate
    
    func searchBar(_ searchBar: UISearchBar,
                   textDidChange searchText: String) {
        
    }
}
