import UIKit

class UsersController: UITableViewController {
    lazy var dataSource: [User] = {
        return User.default
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.registerNib(UserCell.self)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeue(UserCell.self, for: indexPath)
    }

    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let cell = cell as! UserCell
        let name = dataSource[indexPath.row].name
        cell.nameLabel?.text = name
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

        let user = dataSource[indexPath.row]
        let controller = UserController(user: user)
        navigationController?.pushViewController(controller, animated: true)
    }
}
