//
//  TweetTableViewCell.swift
//  AprendiendoTablas
//
//  Created by Luis Carlos Mejia Garcia on 20/01/20.
//  Copyright © 2020 Platzi. All rights reserved.
//

import UIKit

class TweetTableViewCell: UITableViewCell {
    // MARK: - Referencias UI
    @IBOutlet weak var userImageView: UIView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        userImageView.clipsToBounds = true
        
        // frame.width = ancho
        userImageView.layer.cornerRadius = userImageView.frame.width / 2
    }
    
    func setupCell(username: String, message: String) {
        usernameLabel.text = username
        messageLabel.text = message
    }
}
