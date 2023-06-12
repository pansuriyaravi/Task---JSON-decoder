import Foundation

public struct ItemModel: Codable {
    public let quantity: FieldValue<Int>
    public let name: FieldValue<String>
    public let totalPrice: FieldValue<Double>
    
    enum CodingKeys: String, CodingKey {
        case quantity = "Quantity"
        case name = "Name"
        case totalPrice = "TotalPrice"
    }
}
