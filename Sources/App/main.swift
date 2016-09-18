import Vapor

let drop = Droplet()

drop.get { req in
    let lang = req.headers["Accept-Language"]?.string ?? "en"
    return try drop.view.make("welcome", [
    	"message": Node.string(drop.localization[lang, "welcome", "title"])
    ])
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
