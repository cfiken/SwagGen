//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension Rocket.Account {

    /** Change the pin of an account. */
    public enum ChangePin {

        public static let service = APIService<Response>(id: "changePin", tag: "account", method: "PUT", path: "/account/pin", hasBody: true, securityRequirements: [SecurityRequirement(type: "accountAuth", scopes: ["Settings"])])

        public final class Request: APIRequest<Response> {

            /** Change the pin of an account. */
            public class Body: APIModel {

                /** The new pin to set. */
                public var pin: String

                public init(pin: String) {
                    self.pin = pin
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    pin = try container.decode("pin")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encode(pin, forKey: "pin")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Body else { return false }
                  guard self.pin == object.pin else { return false }
                  return true
                }

                public static func == (lhs: Body, rhs: Body) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            public var body: Body

            public init(body: Body, encoder: RequestEncoder? = nil) {
                self.body = body
                super.init(service: ChangePin.service) { defaultEncoder in
                    return try (encoder ?? defaultEncoder).encode(body)
                }
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Change the pin of an account. */
            public class Status400: APIModel {

                /** A description of the error. */
                public var message: String

                /** An optional code classifying the error. Should be taken in the context of the http status code. */
                public var code: Int?

                public init(message: String, code: Int? = nil) {
                    self.message = message
                    self.code = code
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    message = try container.decode("message")
                    code = try container.decodeIfPresent("code")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encode(message, forKey: "message")
                    try container.encodeIfPresent(code, forKey: "code")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status400 else { return false }
                  guard self.message == object.message else { return false }
                  guard self.code == object.code else { return false }
                  return true
                }

                public static func == (lhs: Status400, rhs: Status400) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Change the pin of an account. */
            public class Status401: APIModel {

                /** A description of the error. */
                public var message: String

                /** An optional code classifying the error. Should be taken in the context of the http status code. */
                public var code: Int?

                public init(message: String, code: Int? = nil) {
                    self.message = message
                    self.code = code
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    message = try container.decode("message")
                    code = try container.decodeIfPresent("code")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encode(message, forKey: "message")
                    try container.encodeIfPresent(code, forKey: "code")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status401 else { return false }
                  guard self.message == object.message else { return false }
                  guard self.code == object.code else { return false }
                  return true
                }

                public static func == (lhs: Status401, rhs: Status401) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Change the pin of an account. */
            public class Status403: APIModel {

                /** A description of the error. */
                public var message: String

                /** An optional code classifying the error. Should be taken in the context of the http status code. */
                public var code: Int?

                public init(message: String, code: Int? = nil) {
                    self.message = message
                    self.code = code
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    message = try container.decode("message")
                    code = try container.decodeIfPresent("code")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encode(message, forKey: "message")
                    try container.encodeIfPresent(code, forKey: "code")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status403 else { return false }
                  guard self.message == object.message else { return false }
                  guard self.code == object.code else { return false }
                  return true
                }

                public static func == (lhs: Status403, rhs: Status403) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Change the pin of an account. */
            public class Status404: APIModel {

                /** A description of the error. */
                public var message: String

                /** An optional code classifying the error. Should be taken in the context of the http status code. */
                public var code: Int?

                public init(message: String, code: Int? = nil) {
                    self.message = message
                    self.code = code
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    message = try container.decode("message")
                    code = try container.decodeIfPresent("code")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encode(message, forKey: "message")
                    try container.encodeIfPresent(code, forKey: "code")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status404 else { return false }
                  guard self.message == object.message else { return false }
                  guard self.code == object.code else { return false }
                  return true
                }

                public static func == (lhs: Status404, rhs: Status404) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Change the pin of an account. */
            public class Status500: APIModel {

                /** A description of the error. */
                public var message: String

                /** An optional code classifying the error. Should be taken in the context of the http status code. */
                public var code: Int?

                public init(message: String, code: Int? = nil) {
                    self.message = message
                    self.code = code
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    message = try container.decode("message")
                    code = try container.decodeIfPresent("code")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encode(message, forKey: "message")
                    try container.encodeIfPresent(code, forKey: "code")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status500 else { return false }
                  guard self.message == object.message else { return false }
                  guard self.code == object.code else { return false }
                  return true
                }

                public static func == (lhs: Status500, rhs: Status500) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Change the pin of an account. */
            public class DefaultResponse: APIModel {

                /** A description of the error. */
                public var message: String

                /** An optional code classifying the error. Should be taken in the context of the http status code. */
                public var code: Int?

                public init(message: String, code: Int? = nil) {
                    self.message = message
                    self.code = code
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    message = try container.decode("message")
                    code = try container.decodeIfPresent("code")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encode(message, forKey: "message")
                    try container.encodeIfPresent(code, forKey: "code")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? DefaultResponse else { return false }
                  guard self.message == object.message else { return false }
                  guard self.code == object.code else { return false }
                  return true
                }

                public static func == (lhs: DefaultResponse, rhs: DefaultResponse) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }
            public typealias SuccessType = Void

            /** OK */
            case status204

            /** Bad request. */
            case status400(Status400)

            /** Invalid access token. */
            case status401(Status401)

            /** Forbidden. */
            case status403(Status403)

            /** Not found. */
            case status404(Status404)

            /** Internal server error. */
            case status500(Status500)

            /** Service error. */
            case defaultResponse(statusCode: Int, DefaultResponse)

            public var success: Void? {
                switch self {
                case .status204: return ()
                default: return nil
                }
            }

            public var response: Any {
                switch self {
                case .status400(let response): return response
                case .status401(let response): return response
                case .status403(let response): return response
                case .status404(let response): return response
                case .status500(let response): return response
                case .defaultResponse(_, let response): return response
                default: return ()
                }
            }

            public var statusCode: Int {
                switch self {
                case .status204: return 204
                case .status400: return 400
                case .status401: return 401
                case .status403: return 403
                case .status404: return 404
                case .status500: return 500
                case .defaultResponse(let statusCode, _): return statusCode
                }
            }

            public var successful: Bool {
                switch self {
                case .status204: return true
                case .status400: return false
                case .status401: return false
                case .status403: return false
                case .status404: return false
                case .status500: return false
                case .defaultResponse: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 204: self = .status204
                case 400: self = try .status400(decoder.decode(Status400.self, from: data))
                case 401: self = try .status401(decoder.decode(Status401.self, from: data))
                case 403: self = try .status403(decoder.decode(Status403.self, from: data))
                case 404: self = try .status404(decoder.decode(Status404.self, from: data))
                case 500: self = try .status500(decoder.decode(Status500.self, from: data))
                default: self = try .defaultResponse(statusCode: statusCode, decoder.decode(DefaultResponse.self, from: data))
                }
            }

            public var description: String {
                return "\(statusCode) \(successful ? "success" : "failure")"
            }

            public var debugDescription: String {
                var string = description
                let responseString = "\(response)"
                if responseString != "()" {
                    string += "\n\(responseString)"
                }
                return string
            }
        }
    }
}
