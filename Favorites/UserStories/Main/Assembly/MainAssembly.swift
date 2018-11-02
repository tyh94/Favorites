//
//  MainAssembly.swift
//  Favorites
//
//  Created by Татьяна on 29/10/2018.
//  Copyright © 2018 Татьяна. All rights reserved.
//

import Swinject
import SwinjectStoryboard
import IGListKit

final class MainAssembly: Assembly {

    // MARK: Assembly
    func assemble(container: Container) {
        
        container.storyboardInitCompleted(MainViewController.self) { r, c in
            c.viewOutput = r.resolve(MainViewOutput.self,
                                     argument: c as MainViewController)
            c.adapter = r.resolve(ListAdapter.self,
                                  argument: c as MainViewController)
        }
        
        container.register(MainViewOutput.self) { (r, controller: MainViewController) in
            let model = MainViewModel()
            model.viewInput = controller
            model.factory = r.resolve(MainFactory.self)
            model.router = r.resolve(MainRouter.self, argument: controller)
            return model
        }
        
        container.register(MainFactory.self) { r in
            MainFactoryImpl()
        }
        
        container.register(ListAdapter.self) { (r, controller: MainViewController) in
            ListAdapter(updater: ListAdapterUpdater(),
                        viewController: controller)
        }
        
        container.register(MainRouter.self) { (r, controller: MainViewController) in
            let router = MainRouter()
            router.controller = controller
            router.giphyAssembly = GiphyAssembly()
            return router
        }
    }
}
