//
//  Contact.swift
//  ContactsApp
//
//  Created by Haneen on 18/11/1444 AH.
//

import SwiftUI
import FirebaseFirestoreSwift

struct Contact: Codable, Identifiable{
    var id: String = UUID().uuidString
    var name: String?
}
