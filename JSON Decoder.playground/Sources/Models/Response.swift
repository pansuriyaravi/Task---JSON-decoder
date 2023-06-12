import Foundation

public struct ResponseModel: Codable{
    public let status: String
    public let createdDateTime: Date
    public let lastUpdatedDateTime: Date
    public let analyzeResult: AnalyzeResultModel
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.status = try container.decode(String.self, forKey: .status)
        self.analyzeResult = try container.decode(AnalyzeResultModel.self, forKey: .analyzeResult)
        
        let createdDateTimeString = try container.decode(String.self, forKey: .createdDateTime)
        let lastUpdatedDateTimeString = try container.decode(String.self, forKey: .lastUpdatedDateTime)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss'Z'"
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
        if let createdDateTime = dateFormatter.date(from: createdDateTimeString),
           let lastUpdatedDateTime = dateFormatter.date(from: lastUpdatedDateTimeString) {
            self.createdDateTime = createdDateTime
            self.lastUpdatedDateTime = lastUpdatedDateTime
        }
        else {
            throw DecodingError.dataCorruptedError(forKey: .createdDateTime, in: container, debugDescription: "Invalid date format")
        }
    }
}
