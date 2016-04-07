//
//  AddressBookUtilities.swift
//  AddressBook
//
//  Created by Joel Drotleff on 4/6/16.
//  Copyright © 2016 alterplay. All rights reserved.
//

import UIKit

typealias JSON = [String: AnyObject]

protocol JsonConvertible {
    func toJson() -> JSON?
}

protocol StringConvertible {
    func toString() -> String
}

extension APContact {
    func toJsonString() -> String? {
        if let json = toJson() {
            do {
                let jsonData = try NSJSONSerialization.dataWithJSONObject(json, options: [])
                guard let jsonString = NSString(data: jsonData, encoding: NSUTF8StringEncoding) else {
                    return nil
                }
                return jsonString as String
            } catch {
                NSLog("Error parsing APContact to JSON: \(error)")
                return nil
            }
        }
        return nil
    }
}

extension APContact: JsonConvertible {
    func toJson() -> JSON? {
        var json = JSON()
        
        if let firstName = name?.firstName {
            json["first_name"] = firstName
        }
        
        if let lastName = name?.lastName {
            json["last_name"] = lastName
        }
        
        if let firstNamePhonetic = name?.firstNamePhonetic {
            json["first_name_phonetic"] = firstNamePhonetic
        }
        
        if let middleNamePhonetic = name?.middleNamePhonetic {
            json["middle_name_phonetic"] = middleNamePhonetic
        }
        
        if let lastNamePhonetic = name?.lastNamePhonetic {
            json["last_name_phonetic"] = lastNamePhonetic
        }
        
        if let compositeName = name?.compositeName {
            json["composite_name"] = compositeName
        }
        
        if let prefix = name?.prefix {
            json["prefix"] = prefix
        }
        
        if let suffix = name?.suffix {
            json["suffix"] = suffix
        }
        
        if let nickname = name?.nickname {
            json["nickname"] = nickname
        }
        
        if let jobTitle = job?.jobTitle {
            json["job_title"] = jobTitle
        }
        
        if let company = job?.company {
            json["company"] = company
        }
        
        json["has_image"] = hasImage
        
        if let birthday = birthday {
            json["birthday"] = birthday.timeIntervalSince1970
        }
        
        if let note = note {
            json["note"] = note
        }
        
        if let sourceType = source?.sourceType {
            json["source_type"] = sourceType
        }
        
        if let sourceID = source?.sourceID {
            json["source_id"] = sourceID
        }
        
        if let creationDate = recordDate?.creationDate {
            json["creation_date"] = creationDate.timeIntervalSince1970
        }
        
        if let modificationDate = recordDate?.modificationDate {
            json["modification_date"] = modificationDate.timeIntervalSince1970
        }
        
        json["primary_user"] = false
        
        if let phonesJson = phones?.flatMap({ $0.toJson() }) {
            json["phones"] = phonesJson
        }
        
        if let emailsJson = emails?.flatMap({ $0.toJson() }) {
            json["emails"] = emailsJson
        }
        
        if let socialProfiles = socialProfiles?.flatMap({ $0.toJson() }) {
            json["social_profiles"] = socialProfiles
        }
        
        if let instantMessengers = instantMessengers?.flatMap({ $0.toJson() }) {
            json["instant_messengers"] = instantMessengers
        }
        
        if let websites = websites {
            json["websites"] = websites
        }
        
        if let relatedPersons = relatedPersons?.flatMap({ $0.toJson() }) {
            json["related_persons"] = relatedPersons
        }
        
        json["linked_ids_count"] = linkedRecordIDs?.count ?? 0
        
        if let dates = dates?.flatMap({ $0.toJson() }) {
            json["dates"] = dates
        }
        
        return json
    }
}

extension APPhone: JsonConvertible {
    func toJson() -> JSON? {
        var json = JSON()
        if let number = number {
            json["number"] = number
        }
        if let originalLabel = originalLabel {
            json["original_label"] = originalLabel
        }
        return json.keys.count > 0 ? json : nil
    }
}

extension APEmail: JsonConvertible {
    func toJson() -> JSON? {
        var json = JSON()
        if let address = address {
            json["address"] = address
        }
        if let originalLabel = originalLabel {
            json["original_label"] = originalLabel
        }
        return json.keys.count > 0 ? json : nil
    }
}

extension APSocialProfile: JsonConvertible {
    func toJson() -> JSON? {
        var json = JSON()
        json["type"] = socialNetwork.toString()
        if let username = username {
            json["username"] = username
        }
        return json.keys.count > 0 ? json : nil
    }
}

extension APInstantMessenger: JsonConvertible {
    func toJson() -> JSON? {
        var json = JSON()
        json["messenger"] = messenger.toString()
        if let username = username {
            json["username"] = username
        }
        return json.keys.count > 0 ? json : nil
    }
}

extension APRelatedPerson: JsonConvertible {
    func toJson() -> JSON? {
        var json = JSON()
        if let name = name {
            json["name"] = name
        }
        if let originalLabel = originalLabel {
            json["original_label"] = originalLabel
        }
        return json.keys.count > 0 ? json : nil
    }
}

extension APContactDate: JsonConvertible {
    func toJson() -> JSON? {
        var json = JSON()
        if let date = date {
            json["date"] = date.timeIntervalSince1970
        }
        if let originalLabel = originalLabel {
            json["original_label"] = originalLabel
        }
        return json.keys.count > 0 ? json : nil
    }
}

extension APSocialNetworkType: StringConvertible {
    func toString () -> String {
        switch self {
        case .Facebook:
            return "facebook"
        case .Flickr:
            return "flickr"
        case .GameCenter:
            return "gamecenter"
        case .LinkedIn:
            return "linkedin"
        case .MySpace:
            return "myspace"
        case .SinaWeibo:
            return "sinaweibo"
        case .Twitter:
            return "twitter"
        case .Unknown:
            return "unknown"
        }
    }
}

extension APMessengerType: StringConvertible {
    func toString() -> String {
        switch self {
        case .AIM:
            return "aim"
        case .Facebook:
            return "facebook"
        case .GaduGadu:
            return "gadugadu"
        case .GoogleTalk:
            return "googletalk"
        case .ICQ:
            return "icq"
        case .Jabber:
            return "jabber"
        case .MSN:
            return "msn"
        case .QQ:
            return "qq"
        case .Unknown:
            return "unknown"
        case .Skype:
            return "skype"
        case .Yahoo:
            return "yahoo"
        }
    }
}

