#if DEBUG
import Foundation

#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

public enum Stubs {
    public static func httpResponse(statusCode: Int, headers: [String: String] = [:]) -> HTTPURLResponse {
        HTTPURLResponse(url: URL(string: "http://google.com")!, statusCode: 200, httpVersion: nil, headerFields: headers)!
    }

    public static func json(from object: Any) throws -> Data {
        try JSONSerialization.data(withJSONObject: object, options: [])
    }
}
#endif
