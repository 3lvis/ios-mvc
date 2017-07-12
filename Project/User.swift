struct User {
    let name: String

    static var `default`: [User] {
        return [User(name: "Elvis"), User(name: "Luna", User(name: "Cocoa"))]
    }
}
