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
    @Published var selectedNote = Note()
    
    private var databaseReference = Firestore.firestore().collection("Notes")
    
    // MARK: - Function to Post Data
    func addData(title: String) {
        let docRef = databaseReference.addDocument(data: ["title": title])
        dump(docRef)
    }
    
    // MARK: - Function to Read Data
    func fetchData() {
        databaseReference.addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("No documents")
                return
            }
            
            self.notes = documents.compactMap { docSnap -> Note? in
                return try? docSnap.data(as: Note.self)
            }
        }
    }
    
    // MARK: - Function to Update Data
    func updateData(title: String, id: String) {
        databaseReference.document(id).updateData(["title": title]) { error in
            if let error = error {
                print(error.localizedDescription)
            } else {
                print("Note updated successfully")
            }
        }
    }
    
    // MARK: - Function to Delete Data
}
