//
//  ContentView.swift
//  ContactsApp
//
//  Created by Haneen on 18/11/1444 AH.
//

import SwiftUI
import Firebase
struct ContentView: View {
    @ObservedObject private var viewModel = ContactVieM()
    @State private
    var showModle = false
    var body: some View {
        NavigationView {
            List(){
                ForEach(viewModel.contacts) { contact in 
                    Text(contact.name ?? "").font(.title)
                }}
            .onAppear() {
                self.viewModel.fetchData()
            }
        .navigationTitle("Contact List" )
        .navigationBarItems(trailing:
            Button(action: {
            self.showModle = true
        }){
            VStack{
                Image(systemName: "plus")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32 , height: 32 , alignment: .center)
                    .foregroundColor(.gray)
            }}
            .sheet(isPresented: self.$showModle, onDismiss: {}) {
                AddView(showModal: self.$showModle)
                
            
        })
        .navigationBarTitle(Text("Add New"), displayMode:  .inline)
    }}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
