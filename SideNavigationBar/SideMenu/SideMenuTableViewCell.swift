//
//  SideMenuTableViewCell.swift
//  sideMenu
//
//  Created by Abhisek Prusty on 21/02/2026.
//

import UIKit

class SideMenuTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLbl : UILabel! {
        didSet{
            titleLbl.textColor = .black
        }
    }
    @IBOutlet weak var img : UIImageView! {
        didSet {
            img.tintColor = .black
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
