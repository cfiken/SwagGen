//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Represents an entry of a Page.
Defines what specific piece of content should be presented e.g. an Item or ItemList.
Also defines what visual template should be used to render that content.
 */
public class PageEntry: Codable {

    /** The type of PageEntry. Used to help identify what type of content will be presented. */
    public enum `Type`: String, Codable {
        case itemEntry = "ItemEntry"
        case itemDetailEntry = "ItemDetailEntry"
        case listEntry = "ListEntry"
        case listDetailEntry = "ListDetailEntry"
        case userEntry = "UserEntry"
        case textEntry = "TextEntry"
        case imageEntry = "ImageEntry"
        case customEntry = "CustomEntry"
        case peopleEntry = "PeopleEntry"

        public static let cases: [`Type`] = [
          .itemEntry,
          .itemDetailEntry,
          .listEntry,
          .listDetailEntry,
          .userEntry,
          .textEntry,
          .imageEntry,
          .customEntry,
          .peopleEntry,
        ]
    }

    /** The unique identifier for a page entry. */
    public var id: String

    /** The type of PageEntry. Used to help identify what type of content will be presented. */
    public var type: `Type`

    /** The name of the Page Entry. */
    public var title: String

    /** Template type used to present the content of the PageEntry. */
    public var template: String

    /** A map of custom fields defined by a curator for a page entry. */
    public var customFields: [String: Any]?

    /** The images for the page entry if any.

For example the images of an `ImageEntry`.
 */
    public var images: [String: URL]?

    /** If 'type' is 'ItemEntry' then this is the item to be represented. */
    public var item: ItemSummary?

    /** If 'type' is 'ListEntry' or 'UserEntry' then this is the list to be represented. */
    public var list: ItemList?

    /** If 'type' is 'PeopleEntry' then this is the array of people to present. */
    public var people: [Person]?

    /** If 'type' is 'TextEntry' then this is the text to be represented. */
    public var text: String?

    public init(id: String, type: `Type`, title: String, template: String, customFields: [String: Any]? = nil, images: [String: URL]? = nil, item: ItemSummary? = nil, list: ItemList? = nil, people: [Person]? = nil, text: String? = nil) {
        self.id = id
        self.type = type
        self.title = title
        self.template = template
        self.customFields = customFields
        self.images = images
        self.item = item
        self.list = list
        self.people = people
        self.text = text
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case type
        case title
        case template
        case customFields
        case images
        case item
        case list
        case people
        case text
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        id = try container.decode(.id)
        type = try container.decode(.type)
        title = try container.decode(.title)
        template = try container.decode(.template)
        customFields = try container.decodeAnyIfPresent(.customFields)
        images = try container.decodeIfPresent(.images)
        item = try container.decodeIfPresent(.item)
        list = try container.decodeIfPresent(.list)
        people = try container.decodeIfPresent(.people)
        text = try container.decodeIfPresent(.text)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(id, forKey: .id)
        try container.encode(type, forKey: .type)
        try container.encode(title, forKey: .title)
        try container.encode(template, forKey: .template)
        try container.encodeAny(customFields, forKey: .customFields)
        try container.encode(images, forKey: .images)
        try container.encode(item, forKey: .item)
        try container.encode(list, forKey: .list)
        try container.encode(people, forKey: .people)
        try container.encode(text, forKey: .text)
    }
}