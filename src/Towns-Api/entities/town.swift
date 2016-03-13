import PureJsonSerializer

struct Town {
  let name : String
  let country: String

  func toJson() -> Json {
    return [
      "name": "Hello",
      "country": "World"
    ]
  }
}
