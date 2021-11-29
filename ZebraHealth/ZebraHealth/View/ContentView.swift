//
//  ContentView.swift
//  ZebraHealth
//
//  Created by mxg0820 on 11/19/21.
//

import SwiftUI
import SlideOverCard

struct ContentView: View {
    
    @State var isSlideOverCardBeingPresented: Bool = false
    @ObservedObject private var zebraHorseVM = ZebraHorseViewModel.shared
    @State var numberOfTrots = ""
    
    var body: some View {
        VStack {
            ProfileSection(profile: zebraHorseVM.mrHorse)
            BarChart(title: "Daily Activity",
                     legend: "Trots",
                     barColor: zebraHorseVM.mrHorse.membershipType.associatedColor,
                     data: zebraHorseVM.chartData)
                .padding([.leading, .trailing])
            Button {
                isSlideOverCardBeingPresented = true
            } label: {
                AddButton(title: "Add Activity",
                          associatedColor: zebraHorseVM.mrHorse.membershipType.associatedColor)
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
                    .accessibilityIdentifier("id_slideover_title_text")
                TextField("Number of Trots", text: $numberOfTrots)
                    .accessibilityIdentifier("id_slideover_trots_textfield")
                    .keyboardType(.numberPad)
                    .disableAutocorrection(true)
                    .padding()
                Button("Add") {
                    zebraHorseVM.addToChart(value: numberOfTrots)
                    numberOfTrots = ""
                    isSlideOverCardBeingPresented = false
                }
                .accessibilityIdentifier("id_slideover_add_activity_button")
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
