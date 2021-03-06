import UIKit

class UserController: UIViewController {
    private var user: User

    init(user: User) {
        self.user = user

        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) { fatalError() }

    private var customView: UserView { return self.view as! UserView }

    override func loadView() {
        let view = UIView.instanceFromNib() as UserView
        self.view = view
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        customView.user = user
    }
}
