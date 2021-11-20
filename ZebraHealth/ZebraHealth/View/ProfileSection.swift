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
                HStack {
                    Circle()
                        .foregroundColor(.yellow)
                        .frame(width: 10, height: 10)
                    Text("\(memberType) Member")
                }
            }
            ProfilePicture()
                .frame(width: 100, height: 100, alignment: .leading)
        }
    }
}

struct ProfileSection_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSection(username: "Mr. Butter Butterington", memberType: "Diamond")
    }
}
