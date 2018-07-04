import APIKit

struct CancelTransactionRequest: PokepayRequest {
    let id: String

    typealias Response = NoContent

    init(id: String) {
        self.id = id
    }

    var method: HTTPMethod {
        return .delete
    }

    var path: String {
        return "/transactions/\(id)"
    }
}
