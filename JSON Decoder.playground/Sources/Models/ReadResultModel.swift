import Foundation

public struct ReadResultModel: Codable {
    public let page: Int
    public let angle: Double
    public let width: Int
    public let height: Int
    public let unit: String
    public let language: String
}
