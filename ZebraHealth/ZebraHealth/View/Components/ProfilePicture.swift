//
//  ProfilePicture.swift
//  ZebraHealth
//
//  Created by mxg0820 on 11/19/21.
//

import SwiftUI

struct ProfilePicture: View {
    var profilePicture: String
    var borderColor: Color
    
    var body: some View {
        Image(profilePicture)
            .resizable()
            .clipShape(Circle())
            .shadow(radius: 10)
            .overlay(Circle().stroke(borderColor, lineWidth: 5))
            .accessibilityIdentifier("id_profile_picture")
    }
}
struct ProfilePicture_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePicture(profilePicture: "horse", borderColor: .yellow)
    }
}
