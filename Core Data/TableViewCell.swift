//
//  TableViewCell.swift
//  Core Data
//
//  Created by Kelvin on 11/1/17.
//  Copyright © 2017 Kelvin. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UITextView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var editButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setNote(note: Note) {
        titleLabel.text = note.title
        descriptionLabel.text = note.details
        
        let date = DateFormatter()
        date.dateFormat = "MM/dd/yy/ h:mm a"
        let dateSaved = date.string(from: note.date as! Date)
        dateLabel.text = dateSaved
    }
    


}
