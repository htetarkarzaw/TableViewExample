//
//  ViewController.swift
//  Assgiment_2_TableView
//
//  Created by Htet Arkar Zaw on 8/8/19.
//  Copyright © 2019 Htet Arkar Zaw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tvFriendLIst: UITableView!
    
    var names: [String] = [
        "Zeus", "Sinper", "DragonKanight", "Silencer", "Terroblade"
    ]
    
    var types: [String] = [
        "Nucker", "Core,Range", "Mid,Core,tank", "Support,Core", "Core,Hard Carry"
    ]
    
    var sacres: [String] = [
        "Silent,BladeMail", "BladeMail,Stunner", "DamageDealer", "Everytings", "None"
    ]
    
    var images: [String] = [
        "zeus", "sniper", "dk", "silencer", "tb"
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tvFriendLIst.dataSource = self
        let nib = UINib(nibName: FriendTableViewCell.identifier, bundle: nil)
        tvFriendLIst.register(nib, forCellReuseIdentifier: FriendTableViewCell.identifier)
        
        tvFriendLIst.contentInset = UIEdgeInsets(top: 2, left: 0, bottom: 14, right: 0)
    }
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FriendTableViewCell.identifier,for: indexPath) as! FriendTableViewCell
        cell.lblName.text = names[indexPath.item]
        cell.lblType.text = types[indexPath.item]
        cell.lblScare.text = sacres[indexPath.item]
        cell.ivProfile.image = UIImage(named: images[indexPath.item])
        return cell
    }
    
        
}



