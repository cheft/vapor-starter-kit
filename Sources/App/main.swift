import Vapor

let drop = Droplet()

drop.get { req in
    return try drop.view.make("index.html")
}

drop.get("test") { req in
    guard let name = req.data["name"]?.string else {
        throw Abort.badRequest
    }
    
    return "hello \(name)!"
}

drop.get("json") { req in
    return try JSON (node: [
        "name": "cheft"
    ])
}

drop.resource("posts", PostController())

drop.run()
