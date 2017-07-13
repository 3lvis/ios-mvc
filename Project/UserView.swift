import UIKit

class UserView: UIView {
    @IBOutlet weak var nameLabel: UILabel!

    var user: User? {
        didSet {
            nameLabel.text = user?.name
        }
    }
}
