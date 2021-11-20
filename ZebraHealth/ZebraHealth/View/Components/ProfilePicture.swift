//
//  ProfilePicture.swift
//  ZebraHealth
//
//  Created by mxg0820 on 11/19/21.
//

import SwiftUI

struct ProfilePicture: View {
    var body: some View {
        Image("horse")
            .resizable()
            .clipShape(Circle())
            .shadow(radius: 10)
            .overlay(Circle().stroke(.yellow, lineWidth: 5))
            .accessibilityIdentifier("id_profile_picture")
    }
}
struct ProfilePicture_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePicture()
    }
}
