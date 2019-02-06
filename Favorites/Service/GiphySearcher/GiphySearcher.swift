//
//  GiphySearcher.swift
//  Favorites
//
//  Created by Татьяна on 02/11/2018.
//  Copyright © 2018 Татьяна. All rights reserved.
//

protocol GiphySearcher {

    func search(text: String,
                completion: (([Any]) -> Void))
    
}
