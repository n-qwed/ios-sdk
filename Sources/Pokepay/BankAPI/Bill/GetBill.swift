import APIKit

extension BankAPI.Bill {
    struct Get: BankRequest {
        let id: String

        typealias Response = Bill

        init(id: String) {
            self.id = id
        }

        var method: HTTPMethod {
            return .get
        }

        var path: String {
            return "/bills/\(id)"
        }
    }
}