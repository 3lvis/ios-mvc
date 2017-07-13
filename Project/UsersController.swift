import UIKit

class UsersController: UITableViewController {
    private lazy var dataSource = User.default

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.registerNib(UserCell.self)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue(UserCell.self, for: indexPath)
        let name = dataSource[indexPath.row].name
        cell.nameLabel?.text = name

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

        let user = dataSource[indexPath.row]
        let controller = UserController(user: user)
        navigationController?.pushViewController(controller, animated: true)
    }
}
