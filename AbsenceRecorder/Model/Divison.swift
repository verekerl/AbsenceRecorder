//
//  Divison.swift
//  AbsenceRecorder
//
//  Created by Luke Vereker on 18/01/2023.
//

import Foundation

class Division {
    let code: String
    var students: [Student] = []
    
    init(code: String) {
        self.code = code
    }
    
    #if DEBUG
    static func createDivision(code: String, of size: Int) -> Division {
        let division = Division(code: code)
        for i in 1...size {
            let student = Student(forename: "Forename\(i)", surname: "Surname\(i)", birthday: Date())
            division.students.append(student)
        }
        //loop as many times as the parameter size says to create Students and add them to the students property
        return division
    }
    
    static let examples = [Division.createDivision(code: "vA-1", of: 8),
                           Division.createDivision(code: "vB-1", of: 10),
                           Division.createDivision(code: "vC-1", of: 14),
                           Division.createDivision(code: "vD-1", of: 16)]
    #endif
}
