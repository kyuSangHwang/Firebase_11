//
//  NoteViewModel.swift
//  NoteApp
//
//  Created by 황규상 on 7/22/24.
//

import Foundation
import FirebaseFirestore

class NoteViewModel: ObservableObject {
    @Published var notes = [Note]()
    
    private var databaseReference = Firestore.firestore().collection("Notes")
    
    // MARK: - Function to Post Data
    
    
    // MARK: - Function to Read Data
    
    
    // MARK: - Function to Update Data
    
    
    // MARK: - Function to Delete Data
}
