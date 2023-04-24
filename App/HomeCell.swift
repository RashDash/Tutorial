//
//  HomeCell.swift
//  App
//
//  Created by Ashwani Choudhary on 24/04/23.
//

import UIKit

class HomeCell: UITableViewCell {

    @IBOutlet var nameLbl: UILabel!
    @IBOutlet var descLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        let bgColorView = UIView()
        bgColorView.backgroundColor = UIColor.green.withAlphaComponent(0.3)
        selectedBackgroundView = bgColorView
        accessoryType = .disclosureIndicator
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
