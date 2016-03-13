import Kitura
import KituraNet
import KituraSys
import PureJsonSerializer

class TownsController {

  class func Index(request: RouterRequest, response: RouterResponse, next: () -> Void) {
    TownsRepository.getAll {
      (towns) in
      // TODO: proper json serializing - this is a hack
      let jsonTowns = towns.map {
        (town) -> String in
        return town.toJson().serialize(.PrettyPrint)
      }
      let serializedJson = "[\(jsonTowns.joinWithSeparator(","))]"
      response.status(HttpStatusCode.OK).send(serializedJson)
      next()
    }
  }

}
