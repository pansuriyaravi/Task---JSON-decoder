import Foundation

public struct AnalyzeResultModel: Codable {
    public let version: String
    public let readResults: [ReadResultModel]
    public let documentResults: [DocumentResultModel]
}
