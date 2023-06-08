//
//  ContactView.swift
//  ContactsApp
//
//  Created by Haneen on 18/11/1444 AH.
//

//import SwiftUI
import Foundation
import FirebaseFirestore

class ContactViewM: ObservableObject {
    
    @Published var contacts = [Contact]()
    private var db = Firestore.firestore()
    
    func fetchData(){
        db.collection("contacts").addSnapshotListener {  (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("No documents")
                return
            }
            self.contact = documents.map { (queryDocumentSnapshot) -> Contact in
                let data = queryDocumentSnapshot.data()
                let name = data["name"] as? String ?? ""
                return Contact(name: name)
                
            }
        }
        
    }
    func addData(name: String) {
        db.collection("contacts").addDocument(data: ["name": name]) {
            error in
            if let error = error{
                print(error.localizedDescription)
            }
        }
    }
}
