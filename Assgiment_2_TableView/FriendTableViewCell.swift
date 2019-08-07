//
//  FriendTableViewCell.swift
//  Assgiment_2_TableView
//
//  Created by Htet Arkar Zaw on 8/8/19.
//  Copyright © 2019 Htet Arkar Zaw. All rights reserved.
//

import UIKit

class FriendTableViewCell: UITableViewCell {

    static let identifier = "FriendTableViewCell"
    @IBOutlet weak var ivProfile: UIImageView!
    @IBOutlet weak var viewFollow: UIView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblType: UILabel!
    @IBOutlet weak var lblScare: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = .none
        ivProfile.layer.cornerRadius = 60
        viewFollow.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
