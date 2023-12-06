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
    @State private var isAlertPresented = false
    @State private var isPriceErrorPresented = false
    @State private var isPhoneNumberErrorPresented = false

    var isInputValid: Bool {
        return !item.isEmpty && !itemPrice.isEmpty && !renterName.isEmpty && !phoneNumber.isEmpty && !dorm.isEmpty && !image.isEmpty
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Enter Information:")
                .font(.title)
                .foregroundColor(.blue)

            TextField("Item", text: $item)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            TextField("Price of Item", text: $itemPrice)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)

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
                guard isInputValid else {
                    isAlertPresented = true
                    return
                }

                guard let price = Double(itemPrice) else {
                    isPriceErrorPresented = true
                    return
                }

                guard let _ = Int(phoneNumber) else {
                    isPhoneNumberErrorPresented = true
                    return
                }

                let newItem = Item(name: item, itemPrice: "\(price)", renterName: renterName, renterPhoneNum: phoneNumber, dormBuilding: dorm, image: image)
                addItem(newItem)
                presentationMode.wrappedValue.dismiss()
            }) {
                RectangleButton(color: Color.blue, title: "Confirm")
            }
            .padding()
        }
        .padding()
        .alert(isPresented: $isAlertPresented) {
            Alert(
                title: Text("Incomplete Fields"),
                message: Text("Please fill in all fields."),
                dismissButton: .default(Text("OK"))
            )
        }
        .alert(isPresented: $isPriceErrorPresented) {
            Alert(
                title: Text("Invalid Price"),
                message: Text("Please enter a valid number for the price."),
                dismissButton: .default(Text("OK"))
            )
        }
        .alert(isPresented: $isPhoneNumberErrorPresented) {
            Alert(
                title: Text("Invalid Phone Number"),
                message: Text("Please enter a valid phone number."),
                dismissButton: .default(Text("OK"))
            )
        }
    }

    struct DataEntryView_Previews: PreviewProvider {
        static var previews: some View {
            DataEntryView(addItem: { _ in }, rentalsManager: RentalsManager())
        }
    }
}