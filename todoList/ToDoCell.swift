//
//  ToDoCell.swift


import Foundation
import UIKit

class ToDoCell: UITableViewCell {

    @IBOutlet var uiView: UIView!
    @IBOutlet weak var lableTaskName: UILabel!
    @IBOutlet weak var buttonDelete: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        // UI View
        uiView.layer.cornerRadius = 8
        uiView.layer.backgroundColor = UIColor(red: 147/255, green: 147/255, blue: 147/255, alpha: 0.15).cgColor
        uiView.layer.shadowColor = UIColor(red: 147/255, green: 147/255, blue: 147/255, alpha: 0.15).cgColor
        uiView.layer.shadowOffset = CGSize(width: 0, height: 0)
        uiView.layer.shadowOpacity = 1
        uiView.layer.shadowRadius = 5
        
        // Delete Button
        buttonDelete.layer.backgroundColor = UIColor(red: 255/255, green: 19/255, blue: 0, alpha: 0.2).cgColor
        buttonDelete.layer.cornerRadius = 8
        buttonDelete.layer.shadowColor = UIColor(red: 255/255, green: 19/255, blue: 0, alpha: 0.15).cgColor
        buttonDelete.layer.shadowOffset = CGSize(width: 0, height: 0)
        buttonDelete.layer.shadowOpacity = 1
        buttonDelete.layer.shadowRadius = 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
