//
//  DataEntryView.swift
//  PlatformProject3
//
//  Created by  Jack Pollackov on 12/4/23.
//

import SwiftUI

struct DataEntryView: View {
    var addItem: (Item) -> Void
    @ObservedObject var rentalsManager: RentalsManager
    @Environment(\.presentationMode) var presentationMode
    @State private var item = ""
    @State private var itemPrice = ""
    @State private var renterName = ""
    @State private var phoneNumber = ""
    @State private var dorm = ""
    @State private var image = ""

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Enter Information:")
                .font(.title)
                .foregroundColor(.blue)

            TextField("Item", text: $item)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            TextField("Price of Item", text: $itemPrice)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            TextField("Full Name", text: $renterName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.default)

            TextField("Phone Number", text: $phoneNumber)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.phonePad)

            TextField("Dorm", text: $dorm)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            TextField("Image", text: $image)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            Spacer()
            Button(action: {
                let newItem = Item(name: item, itemPrice: itemPrice, renterName: renterName, renterPhoneNum: phoneNumber, dormBuilding: dorm, image: image)
                addItem(newItem)
                presentationMode.wrappedValue.dismiss()
            }) {
                RectangleButton(color: Color.blue, title: "Confirm")
            }
            .padding()
        }
        .padding()
    }
}

struct DataEntryView_Previews: PreviewProvider {
    static var previews: some View {
        DataEntryView(addItem: { _ in }, rentalsManager: RentalsManager())
    }
}
