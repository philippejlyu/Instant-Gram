//
//  PostViewCell.swift
//  Instagram
//
//  Created by Philippe Yu on 2017-10-20.
//  Copyright © 2017 Philippe Yu. All rights reserved.
//

import UIKit

class PostViewCell: UITableViewCell {
    
    //MARK: - Outlets
    @IBOutlet weak var captionLabelView: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var contentImageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    
    //MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.profileImageView.layer.cornerRadius = 25.0
        self.profileImageView.clipsToBounds = true
    }
    
    //MARK: - Setting up
    
    func setOutlets(profileImage: UIImage, username: String, contentImage: UIImage, caption: String) {
        self.profileImageView.image = profileImage
        self.usernameLabel.text = username
        self.contentImageView.image = contentImage
        self.captionLabelView.text = "\(username): \(caption)"
    }
    
    

}