import Kitura

class RequestLogger: RouterMiddleware {
    func handle(request: RouterRequest, response: RouterResponse, next: () -> Void) {
        print("[\(request.method)] \(request.originalUrl)")
        next()
    }
}
