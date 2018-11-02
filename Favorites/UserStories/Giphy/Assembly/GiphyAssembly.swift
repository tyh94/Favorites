//
//  GiphyAssembly.swift
//  Favorites
//
//  Created by Татьяна on 02/11/2018.
//  Copyright © 2018 Татьяна. All rights reserved.
//

import Swinject
import SwinjectStoryboard
import IGListKit

class GiphyAssembly: Assembly {
    
    // MARK: Assembly
    func assemble(container: Container) {
        
        container.storyboardInitCompleted(GiphyViewController.self) { r, c in
            c.viewOutput = r.resolve(GiphyViewOutput.self,
                                     argument: c as GiphyViewController)
            c.adapter = r.resolve(ListAdapter.self,
                                  argument: c as GiphyViewController)
        }
        
        container.register(GiphyViewOutput.self) { (r, controller: GiphyViewController) in
            let model = GiphyViewModel()
            model.viewInput = controller
            return model
        }
        
        container.register(ListAdapter.self) { (r, controller: GiphyViewController) in
            ListAdapter(updater: ListAdapterUpdater(),
                        viewController: controller)
        }
    }

}
