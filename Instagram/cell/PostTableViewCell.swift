//
//  PostTableTableViewCell.swift
//  Instagram
//
//  Created by Shakhzod Ilkhomov on 13/03/21.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    @IBOutlet weak var iv_smallProfile: UIImageView!
    @IBOutlet weak var iv_postImage: UIImageView!
    
    @IBOutlet weak var label_fullName: UILabel!
    @IBOutlet weak var label_time: UILabel!
    @IBOutlet weak var label_likes: UILabel!
    @IBOutlet weak var label_post: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
