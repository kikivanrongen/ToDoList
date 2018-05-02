//
//  ToDoCell.swift
//  ToDoList
//
//  Created by Kiki van Rongen on 01-05-18.
//  Copyright © 2018 Kiki van Rongen. All rights reserved.
//

import UIKit

@objc protocol ToDoCellDelegate: class {
    func checkmarkTapped(sender: ToDoCell)
}

class ToDoCell: UITableViewCell {
    
    var delegate: ToDoCellDelegate?
    
    // MARK: Outlets
    @IBOutlet weak var isCompleteButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func completeButtonPressed(_ sender: UIButton) {
        delegate?.checkmarkTapped(sender: self)
    }
    
}
