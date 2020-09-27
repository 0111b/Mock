#if DEBUG
import Foundation

public struct JSON {
    let description: String
    let value: Any

    public init(description: String, value: Any) {
        self.description = description
        self.value = value
    }

    public func json() throws -> Data {
        try Stubs.json(from: self.value)
    }
}

public extension JSON {
    static let invalid: Self = .init(description: "Invalid json", value: [ "invalid": "json" ])
    static let serverError: Self = .init(description: "Server error", value: [
        "error": [
            "message": "Something went wrong"
        ]
    ])
}
#endif
