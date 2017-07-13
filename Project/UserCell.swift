import UIKit

class UserCell: UITableViewCell {
    @IBOutlet private weak var nameLabel: UILabel!

    var user: User? {
        didSet {
            nameLabel.text = user?.name
        }
    }
}
