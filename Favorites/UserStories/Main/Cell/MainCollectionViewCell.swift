//
//  MainCollectionViewCell.swift
//  Favorites
//
//  Created by Татьяна on 29/10/2018.
//  Copyright © 2018 Татьяна. All rights reserved.
//

import UIKit
import IGListKit

class MainCollectionViewCell: UICollectionViewCell, ListBindable {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    // MARK: ListBindable
    func bindViewModel(_ viewModel: Any) {
        if let viewModel = viewModel as? MainCollectionViewCellObject {
            titleLabel.text = viewModel.text
        }
    }
    
}
