//
//  ContentView.swift
//  ZebraHealth
//
//  Created by mxg0820 on 11/19/21.
//

import SwiftUI
import SlideOverCard

struct ContentView: View {
    
    @FocusState var isTextfieldFocused: Bool
    
    @State var isSlideOverCardBeingPresented: Bool = false
    @ObservedObject private var zebraHorseVM = ZebraHorseViewModel.shared
    @State var numberOfTrots = ""
    
    var body: some View {
        VStack {
            ProfileSection(username: "Mr. Butter Butterington", memberType: "Gold")
            BarChart(title: "Daily Activity", legend: "Trots", barColor: .yellow, data: zebraHorseVM.chartData)
                .padding([.leading, .trailing])
            Button {
                isSlideOverCardBeingPresented = true
            } label: {
                AddButton(title: "Add Activity")
            }
            .padding()
        }
        .slideOverCard(isPresented: $isSlideOverCardBeingPresented, onDismiss: {
            print("Was dismissed")
        }, options: [.disableDrag, .disableDragToDismiss, .hideExitButton]) {
            VStack {
                Text("New Activity")
                    .font(.largeTitle)
                    .bold()
                TextField("Number of Trots", text: $numberOfTrots)
                    .keyboardType(.numberPad)
                    .focused($isTextfieldFocused)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
                    .padding()
                Button("Add") {
                    zebraHorseVM.addToChart(value: numberOfTrots)
                    isTextfieldFocused = false
                    numberOfTrots = ""
                    isSlideOverCardBeingPresented = false
                }
                .buttonStyle(SOCActionButton())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
