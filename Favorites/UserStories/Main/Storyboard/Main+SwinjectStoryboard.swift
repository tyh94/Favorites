//
//  Main+SwinjectStoryboard.swift
//  Favorites
//
//  Created by Татьяна on 30/10/2018.
//  Copyright © 2018 Татьяна. All rights reserved.
//

import Swinject
import SwinjectStoryboard

extension SwinjectStoryboard {

    public static func setup() {
        Assembler([MainAssembly()], container: defaultContainer)
    }
}
