import Foundation

public struct FieldValue<T: Codable>: Codable {
    public let type: String
    public let value: T?
    public let text: String?
    public let boundingBox: [Double]
    public let page: Int?
    public let confidence: Double?
    
    enum CodingKeys: String, CodingKey {
        case type
        case value = "valueString"
        case text
        case boundingBox
        case page
        case confidence
    }
    
    public init(from decoder: Decoder) throws {
        let container: KeyedDecodingContainer<FieldValue<T>.CodingKeys> = try decoder.container(keyedBy: FieldValue<T>.CodingKeys.self)
        self.type = try container.decode(String.self, forKey: FieldValue<T>.CodingKeys.type)
        self.value = try container.decodeIfPresent(T.self, forKey: FieldValue<T>.CodingKeys.value)
        self.text = try container.decodeIfPresent(String.self, forKey: FieldValue<T>.CodingKeys.text)
        self.boundingBox = try container.decodeIfPresent([Double].self, forKey: FieldValue<T>.CodingKeys.boundingBox) ?? []
        self.page = try container.decodeIfPresent(Int.self, forKey: FieldValue<T>.CodingKeys.page)
        self.confidence = try container.decodeIfPresent(Double.self, forKey: FieldValue<T>.CodingKeys.confidence)
    }
}
