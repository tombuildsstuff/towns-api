import Kitura
import KituraNet
import KituraSys

class HomeController {

  class func Index(request: RouterRequest, response: RouterResponse, next: () -> Void) {
    response.status(HttpStatusCode.OK).send("Hello, World")
    next()
  }

}
