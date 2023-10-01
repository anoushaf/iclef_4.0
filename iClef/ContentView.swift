//
//  ContentView.swift
//  iClef
//
//  Created by Anousha Farshid on 9/17/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    @State public var s = 1
    @State private var showModal = false
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        
        VStack{
            practice()


        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
