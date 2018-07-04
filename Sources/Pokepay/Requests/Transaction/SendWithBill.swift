import APIKit

struct SendWithBill: PokepayRequest {
    let id: String
    let accountId: String?
    let amount: Double?

    typealias Response = UserTransaction

    init(id: String, accountId: String?, amount: Double?) {
        self.id = id
        self.accountId = accountId
        self.amount = amount
    }

    var method: HTTPMethod {
        return .post
    }

    var path: String {
        return "/transactions"
    }

    var parameters: Any? {
        var dict: [String: Any] = ["bill_id": id]
        if accountId != nil {
            dict["account_id"] = accountId
        }
        if amount != nil {
            dict["amount"] = amount
        }
        return dict
    }
}
