import UIKit

class UsersController: UITableViewController {
    lazy var dataSource: [User] = {
        return User.default
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.registerNib(UserCell.self)
    }
}
