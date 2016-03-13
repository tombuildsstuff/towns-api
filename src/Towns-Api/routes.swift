import Kitura

class Routes {
  class func configure(router: Router) {
    router.use("/*", middleware: RequestLogger())

    router.get("/", handler: HomeController.Index)
    router.get("/towns", handler: TownsController.Index)
  }
}
