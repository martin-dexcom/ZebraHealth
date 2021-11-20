//
//  ProfileSection.swift
//  ZebraHealth
//
//  Created by mxg0820 on 11/19/21.
//

import SwiftUI

struct ProfileSection: View {
    var username: String
    var memberType: String
    
    var body: some View {
        HStack {
            VStack {
                Text(username)
                    .bold()
                    .accessibilityIdentifier("id_profile_section_username_text")
                HStack {
                    Circle()
                        .foregroundColor(.yellow)
                        .frame(width: 10, height: 10)
                        .accessibilityIdentifier("id_profile_section_member_type_indicator")
                    Text("\(memberType) Member")
                        .accessibilityIdentifier("id_profile_section_member_type_text")
                }
            }
            ProfilePicture()
                .frame(width: 100, height: 100, alignment: .leading)
        }
        .accessibilityIdentifier("id_profile_section_view")
    }
}

struct ProfileSection_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSection(username: "Mr. Butter Butterington", memberType: "Diamond")
    }
}
