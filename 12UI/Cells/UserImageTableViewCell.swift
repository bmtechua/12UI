//
//  UserImageTableViewCell.swift
//  12UI
//
//  Created by bmtech on 26.05.2022.
//

import UIKit

class UserImageTableViewCell: UITableViewCell {

    @IBOutlet weak var testuserImageView: UIImageView!
    
    @IBOutlet weak var testuserLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
     
        testuserLabel.text = name
        testuserImageView.image = UIImage(named: "icon.myimg")
        
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
