//
//  Student.swift
//  AbsenceRecorder
//
//  Created by Luke Vereker on 18/01/2023.
//

import Foundation

class Student {
    let forename: String
    let surname: String
    let birthday: Date
    
    
    init(forename: String, surname: String, birthday: Date) {
        self.forename = forename
        self.surname = surname
        self.birthday = birthday
    }
    
    #if DEBUG
    static let example = Student(forename: "Bob", surname: "Builer", birthday: Date())
    static let examples = [example]
    #endif
}
