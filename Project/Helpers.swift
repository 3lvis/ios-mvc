import UIKit

public protocol Identifiable {
    static var reuseIdentifier: String { get }
}

public extension Identifiable {
    public static var reuseIdentifier: String {
        return String(describing: self)
    }
}

extension UITableViewCell: Identifiable {}

public extension UITableView {

    public func register(_ cellClass: UITableViewCell.Type) {
        self.register(cellClass.self, forCellReuseIdentifier: cellClass.reuseIdentifier)
    }

    public func registerNib(_ cellClass: UITableViewCell.Type) {
        self.register(UINib.init(nibName: String(describing: cellClass), bundle: nil), forCellReuseIdentifier: cellClass.reuseIdentifier)
    }

    public func dequeue<T>(_ cellClass: T.Type, for indexPath: IndexPath) -> T where T: Identifiable, T: UITableViewCell {
        return self.dequeueReusableCell(withIdentifier: cellClass.reuseIdentifier, for: indexPath) as! T
    }
}

extension UIView {
    /// Helper method to instantiate a nib file.
    ///
    /// - Parameter bundle: The bundle where the nib is located, by default we'll use the main bundle.
    /// - Returns: Returns an instance of the nib as a UIView.
    class func instanceFromNib<T: UIView>(bundle: Bundle = .main) -> T {
        return UINib(nibName: String(describing: T.self), bundle: bundle).instantiate(withOwner: nil, options: nil)[0] as! T
    }
}
