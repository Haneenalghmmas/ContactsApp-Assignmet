//
//  AddView.swift
//  ContactsApp
//
//  Created by Haneen on 18/11/1444 AH.
//

import SwiftUI

struct AddView: View {
    @Binding var showModal: Bool
    @State private var name: String = ""
    @ObservedObject private var viewModel = ContactViewM()
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("name")) {
                TextField("Enter your name" , text:  $name)
            }
            Section() {
                Button(action: {
                    self.viewModel.addData(name: name)
                    self.showModal.toggle()
                }){
                    HStack{
                        Text("Add New")
                            .font(.title)
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(30)
                }
                
            }
        }
            .navigationTitle("New contact")
    }
    }
}

