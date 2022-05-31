//
//  RateTableViewCell.swift
//  12UI
//
//  Created by bmtech on 26.05.2022.
//

import UIKit

class RateTableViewCell: UITableViewCell {
    
    @IBOutlet weak var swiftImageView: UIImageView!
    @IBOutlet weak var gitImageView: UIImageView!
    @IBOutlet weak var swiftLabel: UILabel!
    @IBOutlet weak var gitLabel: UILabel!
    
    @IBOutlet weak var star1: UIImageView!
    @IBOutlet weak var star2: UIImageView!
    @IBOutlet weak var star3: UIImageView!
    
    @IBOutlet weak var star4: UIImageView!
    @IBOutlet weak var star5: UIImageView!
    @IBOutlet weak var star6: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        swiftLabel.text = swiftlabel
        gitLabel.text = gitlabel
        
        swiftImageView.image = UIImage(named: "icon.swift")
        gitImageView.image = UIImage(named: "icon.git")
        star1.image = UIImage(named: "starBlank")
        star2.image = UIImage(named: "starBlank")
        star3.image = UIImage(named: "starBlank")
        star4.image = UIImage(named: "starBlank")
        star5.image = UIImage(named: "starBlank")
        star6.image = UIImage(named: "starBlank")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
