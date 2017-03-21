//
//  Post.swift
//  MyHood
//
//  Created by Laurent Liu on 21/03/2017.
//  Copyright © 2017 Laurent Liu. All rights reserved.
//

import Foundation

class Post {
    
    fileprivate var _imagePath: String!
    fileprivate var _title: String!
    fileprivate var _postDescription: String!
    
    var imagePath: String {
        return _imagePath
    }

    var title: String {
        return _title
    }
    
    var postDescription: String {
        return _postDescription
    }
    
    init(imagePath: String, title: String, postDescription: String) {
        self._imagePath = imagePath
        self._title = title
        self._postDescription = postDescription
    }
}
