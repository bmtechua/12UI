//
//  JobExperienceTableViewCell.swift
//  12UI
//
//  Created by bmtech on 26.05.2022.
//

import UIKit

class JobExperienceTableViewCell: UITableViewCell {

    @IBOutlet weak var jobExperienceImageView: UIImageView!
    
    @IBOutlet weak var jobExperienceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        jobExperienceLabel.text = jobexperience
        
        jobExperienceImageView.image = UIImage(named: "image 1")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
