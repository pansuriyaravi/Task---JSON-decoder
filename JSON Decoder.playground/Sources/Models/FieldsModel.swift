import Foundation

public struct FieldsModel: Codable {
    public let receiptType: FieldValue<String>
    public let merchantName: FieldValue<String>
    public let merchantAddress: FieldValue<String>
    public let merchantPhoneNumber: FieldValue<String>
    public let transactionDate: FieldValue<String>
    public let transactionTime: FieldValue<String>
    public let items: FieldValue<[ItemModel]>
    public let subtotal: FieldValue<Double>
    public let tax: FieldValue<Double>
    public let tip: FieldValue<Double>
    public let total: FieldValue<Double>
    
    enum CodingKeys: String, CodingKey {
        case receiptType = "ReceiptType"
        case merchantName = "MerchantName"
        case merchantAddress = "MerchantAddress"
        case merchantPhoneNumber = "MerchantPhoneNumber"
        case transactionDate = "TransactionDate"
        case transactionTime = "TransactionTime"
        case items = "Items"
        case subtotal = "Subtotal"
        case tax = "Tax"
        case tip = "Tip"
        case total = "Total"
    }
}
