import Foundation

public struct DocumentResultModel: Codable {
    public let docType: String
    public let pageRange: [Int]
    public let fields: FieldsModel
}
