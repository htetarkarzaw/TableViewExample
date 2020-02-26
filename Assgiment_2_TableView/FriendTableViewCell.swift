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
    var isFollow = false
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = .none
        ivProfile.layer.cornerRadius = ivProfile.frame.height/2
        viewFollow.layer.cornerRadius = 10
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(onClickFollow))
        viewFollow.addGestureRecognizer(tapGestureRecognizer)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @objc func onClickFollow(){
        if(isFollow){
            viewFollow.layer.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            isFollow = false
        }else{
            viewFollow.layer.backgroundColor = #colorLiteral(red: 0.1843137255, green: 0.7450980392, blue: 0.5725490196, alpha: 1)
            isFollow = true
        }
    }
    
    
}
