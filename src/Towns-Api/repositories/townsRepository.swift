class TownsRepository {

  class func getAll(done: ([Town]) -> ()) {
    let towns = [
      Town(name: "Winchester", country: "United Kingdom"),
      Town(name: "Siena", country: "Italy")
    ]
    done(towns)
  }

}
