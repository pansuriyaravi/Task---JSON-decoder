import UIKit

guard let jsonURL = Bundle.main.url(forResource: "example", withExtension: "json") else {
    fatalError("Unable to find JSON file")
}

do {
    let jsonData = try Data(contentsOf: jsonURL)
    let decoder = JSONDecoder()
    let response = try decoder.decode(ResponseModel.self, from: jsonData)
    dump(response)
}
catch {
    fatalError("Error reading JSON file: \(error)")
}
