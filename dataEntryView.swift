//
//  DataEntryView.swift
//  PlatformProject3
//
//  Created by  Jack Pollackov on 12/4/23.
//

import SwiftUI

struct DataEntryView: View {
    @State private var item = ""
    @State private var itemprice = ""
    @State private var rentorName = ""
    @State private var phoneNumber = ""
    @State private var Dorm = ""
    @State private var Image = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Enter Information:")
                .font(.title)
                .foregroundColor(.blue)
            
            TextField("Item", text: $item)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("Price of Item", text: $itemprice)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("Full Name", text: $rentorName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.emailAddress)
            
            TextField("Phone Number", text: $phoneNumber)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.phonePad)
            
            TextField("Dorm", text: $Dorm)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("Image", text: $Image)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Spacer()
        }
        .padding()
    }
}

struct DataEntryView_Previews: PreviewProvider {
    static var previews: some View {
        DataEntryView()
    }
}
