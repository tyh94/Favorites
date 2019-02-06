//
//  BaseButton.swift
//  Favorites
//
//  Created by Татьяна on 04/11/2018.
//  Copyright © 2018 Татьяна. All rights reserved.
//

import UIKit

class BaseButton: UIButton {
    
    override var isHighlighted: Bool {
        didSet(newValue) {
            backgroundColor = backgroundColor?.withAlphaComponent(newValue ? 1 : 0.5)
        }
        willSet(newValue){
            backgroundColor = backgroundColor?.withAlphaComponent(newValue ? 1 : 0.5)
        }
    }
    
    override var isSelected: Bool {
        didSet(newValue) {
            backgroundColor = backgroundColor?.withAlphaComponent(newValue ? 1 : 0.5)
        }
        willSet(newValue){
            backgroundColor = backgroundColor?.withAlphaComponent(newValue ? 1 : 0.5)
        }
    }
    
}
