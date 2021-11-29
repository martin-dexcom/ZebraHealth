//
//  UserProfile.swift
//  ZebraHealth
//
//  Created by mxg0820 on 11/19/21.
//

import SwiftUI

enum MembershipType {
    case free
    case silver
    case gold
    case diamond
    
    var associatedColor: Color {
        switch self {
        case .free:
            return .black
        case .silver:
            return .gray
        case .gold:
            return .yellow
        case .diamond:
            return .green
        }
    }
    
    var description: String {
        switch self {
        case .free:
            return "Free"
        case .silver:
            return "Silver"
        case .gold:
            return "Gold"
        case .diamond:
            return "Diamond"
        }
    }
}

public struct UserProfile {
    let username: String
    let displayName: String
    let profilePicture: String
    let membershipType: MembershipType
}
