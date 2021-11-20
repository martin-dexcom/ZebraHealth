//
//  AddButton.swift
//  ZebraHealth
//
//  Created by mxg0820 on 11/19/21.
//

import SwiftUI

struct AddButton: View {
    var title: String
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .foregroundColor(.yellow)
                Image(systemName: "plus")
                    .resizable()
                    .foregroundColor(.white)
                    .frame(width: 30, height: 30)
            }
            .frame(width: 60, height: 60)
            Text(title)
                .bold()
                .foregroundColor(.black)
        }
    }
}

struct AddButton_Previews: PreviewProvider {
    static var previews: some View {
        AddButton(title: "Add")
    }
}
