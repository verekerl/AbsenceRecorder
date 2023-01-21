//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Luke Vereker on 18/01/2023.
//

import SwiftUI

struct ContentView: View {
    var divisions: [Division]
    
    var body: some View {
        NavigationView {
            List(divisions, id: \.self.code) { division in
                Text("\(division.code)")
                    .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(divisions: Division.examples)
    }
}
