//
//  Post.swift
//  MyHood
//
//  Created by Laurent Liu on 21/03/2017.
//  Copyright © 2017 Laurent Liu. All rights reserved.
//

import Foundation

class Post: NSObject, NSCoding {
    
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
    
    override init() {
        
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self._imagePath, forKey: "imagePath")
        aCoder.encode(self._title, forKey: "title")
        aCoder.encode(self._postDescription, forKey: "description")
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
        self._imagePath = aDecoder.decodeObject(forKey: "imagePath") as? String
        self._title = aDecoder.decodeObject(forKey: "title") as? String
        self._postDescription = aDecoder.decodeObject(forKey: "description")  as? String
    }
}
