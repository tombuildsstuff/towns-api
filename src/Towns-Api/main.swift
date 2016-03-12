import Kitura
import KituraNet
import KituraSys


let router = Router()

router.use("/*", middleware: RequestLogger())

router.get("/", handler: HomeController.Index)

let port = 8090
let server = HttpServer.listen(port, delegate: router)
Server.run()
