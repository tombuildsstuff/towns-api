import Kitura
import KituraNet
import KituraSys

let port = 8090

let router = Router()
Routes.configure(router)

let server = HttpServer.listen(port, delegate: router)
Server.run()
