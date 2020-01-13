//
//  ExpandCell.swift
//  Dota2AutoChess
//
//  Created by Kien Master on 1/7/20.
//  Copyright © 2020 Trung Kien. All rights reserved.
//

import UIKit

class ExpandCell: UITableViewCell {

    @IBOutlet weak var lblHeroesHp: UILabel!
    @IBOutlet weak var lblHeroesAmor: UILabel!
    @IBOutlet weak var lblMagicResitance: UILabel!
    @IBOutlet weak var lblHeroesDamage: UILabel!
    @IBOutlet weak var lblAttackRate: UILabel!
    @IBOutlet weak var lblAvangeDps: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
