//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension PetstoreTest.User {

    /**
    Updated user

    This can only be done by the logged in user.
    */
    public enum UpdateUser {

        public static let service = APIService<Response>(id: "updateUser", tag: "user", method: "PUT", path: "/user/{username}", hasBody: true, securityRequirements: [])

        public final class Request: APIRequest<Response> {

            /** This can only be done by the logged in user. */
            public class Body: APIModel {

                public var email: String?

                public var firstName: String?

                public var id: Int?

                public var lastName: String?

                public var password: String?

                public var phone: String?

                /** User Status */
                public var userStatus: Int?

                public var username: String?

                public init(email: String? = nil, firstName: String? = nil, id: Int? = nil, lastName: String? = nil, password: String? = nil, phone: String? = nil, userStatus: Int? = nil, username: String? = nil) {
                    self.email = email
                    self.firstName = firstName
                    self.id = id
                    self.lastName = lastName
                    self.password = password
                    self.phone = phone
                    self.userStatus = userStatus
                    self.username = username
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    email = try container.decodeIfPresent("email")
                    firstName = try container.decodeIfPresent("firstName")
                    id = try container.decodeIfPresent("id")
                    lastName = try container.decodeIfPresent("lastName")
                    password = try container.decodeIfPresent("password")
                    phone = try container.decodeIfPresent("phone")
                    userStatus = try container.decodeIfPresent("userStatus")
                    username = try container.decodeIfPresent("username")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encodeIfPresent(email, forKey: "email")
                    try container.encodeIfPresent(firstName, forKey: "firstName")
                    try container.encodeIfPresent(id, forKey: "id")
                    try container.encodeIfPresent(lastName, forKey: "lastName")
                    try container.encodeIfPresent(password, forKey: "password")
                    try container.encodeIfPresent(phone, forKey: "phone")
                    try container.encodeIfPresent(userStatus, forKey: "userStatus")
                    try container.encodeIfPresent(username, forKey: "username")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Body else { return false }
                  guard self.email == object.email else { return false }
                  guard self.firstName == object.firstName else { return false }
                  guard self.id == object.id else { return false }
                  guard self.lastName == object.lastName else { return false }
                  guard self.password == object.password else { return false }
                  guard self.phone == object.phone else { return false }
                  guard self.userStatus == object.userStatus else { return false }
                  guard self.username == object.username else { return false }
                  return true
                }

                public static func == (lhs: Body, rhs: Body) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            public struct Options {

                /** name that need to be deleted */
                public var username: String

                public init(username: String) {
                    self.username = username
                }
            }

            public var options: Options

            public var body: Body

            public init(body: Body, options: Options, encoder: RequestEncoder? = nil) {
                self.body = body
                self.options = options
                super.init(service: UpdateUser.service) { defaultEncoder in
                    return try (encoder ?? defaultEncoder).encode(body)
                }
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(username: String, body: Body) {
                let options = Options(username: username)
                self.init(body: body, options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "username" + "}", with: "\(self.options.username)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = Void

            /** Invalid user supplied */
            case status400

            /** User not found */
            case status404

            public var success: Void? {
                switch self {
                default: return nil
                }
            }

            public var response: Any {
                switch self {
                default: return ()
                }
            }

            public var statusCode: Int {
                switch self {
                case .status400: return 400
                case .status404: return 404
                }
            }

            public var successful: Bool {
                switch self {
                case .status400: return false
                case .status404: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 400: self = .status400
                case 404: self = .status404
                default: throw APIClientError.unexpectedStatusCode(statusCode: statusCode, data: data)
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
