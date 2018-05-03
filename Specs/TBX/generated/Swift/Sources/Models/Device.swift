//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class Device: Codable {

    public var id: String

    public var created: Date?

    public var customer: ObjectID?

    public var customerId: ObjectID?

    public var data: [String: Any]?

    public var deactivateDate: Date?

    public var description: String?

    public var deviceType: ObjectID?

    public var expirationDate: Date?

    public var identifier: String?

    public var lastLogin: Date?

    public var loggedOutDate: Date?

    public var updated: Date?

    public init(id: String, created: Date? = nil, customer: ObjectID? = nil, customerId: ObjectID? = nil, data: [String: Any]? = nil, deactivateDate: Date? = nil, description: String? = nil, deviceType: ObjectID? = nil, expirationDate: Date? = nil, identifier: String? = nil, lastLogin: Date? = nil, loggedOutDate: Date? = nil, updated: Date? = nil) {
        self.id = id
        self.created = created
        self.customer = customer
        self.customerId = customerId
        self.data = data
        self.deactivateDate = deactivateDate
        self.description = description
        self.deviceType = deviceType
        self.expirationDate = expirationDate
        self.identifier = identifier
        self.lastLogin = lastLogin
        self.loggedOutDate = loggedOutDate
        self.updated = updated
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case created
        case customer
        case customerId
        case data
        case deactivateDate
        case description
        case deviceType
        case expirationDate
        case identifier
        case lastLogin
        case loggedOutDate
        case updated
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        id = try container.decode(.id)
        created = try container.decodeIfPresent(.created)
        customer = try container.decodeIfPresent(.customer)
        customerId = try container.decodeIfPresent(.customerId)
        data = try container.decodeAnyIfPresent(.data)
        deactivateDate = try container.decodeIfPresent(.deactivateDate)
        description = try container.decodeIfPresent(.description)
        deviceType = try container.decodeIfPresent(.deviceType)
        expirationDate = try container.decodeIfPresent(.expirationDate)
        identifier = try container.decodeIfPresent(.identifier)
        lastLogin = try container.decodeIfPresent(.lastLogin)
        loggedOutDate = try container.decodeIfPresent(.loggedOutDate)
        updated = try container.decodeIfPresent(.updated)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(id, forKey: .id)
        try container.encode(created, forKey: .created)
        try container.encode(customer, forKey: .customer)
        try container.encode(customerId, forKey: .customerId)
        try container.encodeAny(data, forKey: .data)
        try container.encode(deactivateDate, forKey: .deactivateDate)
        try container.encode(description, forKey: .description)
        try container.encode(deviceType, forKey: .deviceType)
        try container.encode(expirationDate, forKey: .expirationDate)
        try container.encode(identifier, forKey: .identifier)
        try container.encode(lastLogin, forKey: .lastLogin)
        try container.encode(loggedOutDate, forKey: .loggedOutDate)
        try container.encode(updated, forKey: .updated)
    }
}