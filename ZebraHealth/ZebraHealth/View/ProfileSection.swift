//
//  ProfileSection.swift
//  ZebraHealth
//
//  Created by mxg0820 on 11/19/21.
//

import SwiftUI

struct ProfileSection: View {
    var profile: UserProfile
    
    var body: some View {
        HStack {
            VStack {
                Text(profile.displayName)
                    .bold()
                    .accessibilityIdentifier("id_profile_section_username_text")
                HStack {
                    Circle()
                        .foregroundColor(profile.membershipType.associatedColor)
                        .frame(width: 10, height: 10)
                        .accessibilityIdentifier("id_profile_section_member_type_indicator")
                    Text("\(profile.membershipType.description) Member")
                        .accessibilityIdentifier("id_profile_section_member_type_text")
                }
            }
            ProfilePicture(profilePicture: profile.profilePicture, borderColor: profile.membershipType.associatedColor)
                .frame(width: 100, height: 100, alignment: .leading)
        }
        .accessibilityIdentifier("id_profile_section_view")
    }
}

struct ProfileSection_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSection(profile: UserProfile(username: "Test", displayName: "Debuggy", profilePicture: "horse", membershipType: .diamond))
    }
}
