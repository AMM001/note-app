

import UIKit

class noteCell: UITableViewCell {

    @IBOutlet weak var noteTitle: UILabel!
    @IBOutlet weak var noteText: UITextView!
    @IBOutlet weak var noteView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        noteText.isEditable = false // You Can not Change its Content
        
        self.selectionStyle = .none
        self.noteView.roundCorners(15)
        self.noteView.makeUIViewShadow()
    }
    
    func setProperity(_ cellData: Notes) {
        
        self.noteTitle.text = cellData.title
        self.noteText.text = cellData.text
        
    }
    
}
