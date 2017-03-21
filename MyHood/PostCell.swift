//
//  PostCell.swift
//  MyHood
//
//  Created by Laurent Liu on 21/03/2017.
//  Copyright © 2017 Laurent Liu. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        postImage.layer.cornerRadius = 15
    }
    
    func configureCell(post: Post) {
        titleLabel.text = post.title
        descriptionLabel.text = post.postDescription
    }

}
