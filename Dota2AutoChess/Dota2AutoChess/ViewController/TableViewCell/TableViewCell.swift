//
//  TableViewCell.swift
//  Dota2AutoChess
//
//  Created by Kien Master on 1/6/20.
//  Copyright © 2020 Trung Kien. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var imgAvatar: UIImageView!
    @IBOutlet weak var lblHeroesName: UILabel!
    @IBOutlet weak var lblHeroesRaces: UILabel!
    @IBOutlet weak var imgHeroesAbility: UIImageView!
    @IBOutlet weak var lblHeroesCost: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
