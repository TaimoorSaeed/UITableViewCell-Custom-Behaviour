//
//  TableViewCell.swift
//  UITableViewCell Custom Behaviour
//
//  Created by Asher Ahsan on 12/03/2018.
//  Copyright © 2018 com.taimoor. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var trashButton: UIButton!
    @IBOutlet weak var heartButton: UIButton!
    
    weak var delegate : SwiftTableViewCellDelegate?
    
    @IBAction func heartTapeed(_sender: UIButton){
        delegate?.swiftyTableViewCellDidTapHeart(self)
    }
    
    @IBAction func trashTapped(_sender: UIButton) {
        delegate?.swiftyTableViewCellDidTapTrash(self)
    }
}
