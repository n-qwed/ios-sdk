import APIKit

public extension MessagingAPI {
    struct GetUnreadCount: BankRequest {
        public typealias Response = MessageUnreadCount

        public init() {
        }

        public var method: HTTPMethod {
            return .get
        }

        public var path: String {
            return "/messages/unread-count"
        }
    }
}
