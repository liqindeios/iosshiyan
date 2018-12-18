//
//  studentTableViewCell.swift
//  Tast8
//
//  Created by student on 2018/12/5.
//  Copyright © 2018年 liqin. All rights reserved.
//

import UIKit

class studentTableViewCell: UITableViewCell {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var grade: UILabel!
    @IBOutlet weak var gender: UILabel!
    @IBOutlet weak var pic: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
