struct User {
    let name: String

    static var `default`: [User] {
        return [
            User(name: "Walter White"),
            User(name: "Jesse Pinkman"),
            User(name: "Saul Goodman"),
            User(name: "Gus Fring"),
            User(name: "Skyler White"),
            User(name: "Hank Shrader"),
            User(name: "Mike Ehrmantraut"),
        ]
    }
}
