//
//  WorshipSongsCell.swift
//  TheInfuser
//
//  Created by Daniel Brackin on 5/14/17.
//  Copyright © 2017 Daniel Brackin. All rights reserved.
//

import UIKit

class WorshipSongsCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var keyLabel: UILabel!
    @IBOutlet weak var songLabel: UILabel!
    @IBOutlet weak var writer: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
