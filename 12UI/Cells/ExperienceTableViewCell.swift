//
//  RateTableViewCell.swift
//  12UI
//
//  Created by bmtech on 26.05.2022.
//

import UIKit

class ExperienceTableViewCell: UITableViewCell {

    @IBOutlet weak var yearExperienceLabel: UILabel!
    @IBOutlet weak var companyExperienceLabel: UILabel!
    @IBOutlet weak var descriptionExperienceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
