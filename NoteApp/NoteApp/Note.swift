//
//  Note.swift
//  NoteApp
//
//  Created by 황규상 on 7/22/24.
//

import Foundation
import FirebaseFirestoreSwift

struct Note: Codable {
    @DocumentID var id: String?
    var title: String?
}
