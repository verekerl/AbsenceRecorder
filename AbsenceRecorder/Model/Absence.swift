//
//  Absence.swift
//  AbsenceRecorder
//
//  Created by Luke Vereker on 01/02/2023.
//

import Foundation

class Absence {
    var takenOn: Date
    var studentAbsences: [StudentAbsence]
    
    init(date: Date, students: [Student]) {
        takenOn = date
        studentAbsences = students.map { StudentAbsence(student: $0) }
    }
    
    #if DEBUG
    static let example = Absence(date: Date(), students: Student.examples)
    #endif
}
