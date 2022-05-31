//
//  SkillsTableViewCell.swift
//  12UI
//
//  Created by bmtech on 26.05.2022.
//

import UIKit

class SkillsTableViewCell: UITableViewCell {

    
    @IBOutlet weak var skillsImageView: UIImageView!
    @IBOutlet weak var skillsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        skillsLabel.text = skillslabel
        
        skillsImageView.image = UIImage(named: "icon.skills")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
