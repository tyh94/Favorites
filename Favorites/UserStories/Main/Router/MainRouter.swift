//
//  MainRouter.swift
//  Favorites
//
//  Created by Татьяна on 02/11/2018.
//  Copyright © 2018 Татьяна. All rights reserved.
//

import UIKit
import Swinject
import SwinjectStoryboard

class MainRouter: NSObject {

    var controller: MainViewController!
    var giphyAssembly: GiphyAssembly!
    
    func openGiphyModul() {
        let giphyController = getGiphyController()
        controller.navigationController?.pushViewController(giphyController,
                                                            animated: true)
    }
    
    // Private
    private func getGiphyController() -> GiphyViewController {
        let assembler = Assembler([giphyAssembly])
        let storyboard = SwinjectStoryboard.create(name: "Giphy",
                                                   bundle: nil,
                                                   container: assembler.resolver)
        return storyboard.instantiateViewController(withIdentifier: "GiphyViewController") as! GiphyViewController
    }
}
