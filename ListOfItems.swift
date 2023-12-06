//
//  ListOfItems.swift
//  Project 3
//
//  Created by Ryan Loftus on 12/4/23.
//

import Foundation
import SwiftUI

struct ItemRow: View {
    var item: Item

    var body: some View {
        NavigationLink(destination: ItemDetailView(item: item)) {
            VStack(alignment: .leading, spacing: 5) {
                Text(item.name)
                    .font(.headline)
                Text("Price: $\(item.itemPrice)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .padding(10)
            .background(RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white)
                            .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 2))
            .padding(.horizontal, 10)
            .padding(.vertical, 5)
        }
    }
}

struct ItemDetailView: View {
    var item: Item

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Item Name: \(item.name)")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 5)

            Text("Item Price: $\(item.itemPrice)")
                .font(.headline)
                .padding(.bottom, 5)

            Text("Renter Name: \(item.renterName)")
                .font(.headline)
                .padding(.bottom, 5)

            Text("Renter Phone Number: \(item.renterPhoneNum)")
                .font(.headline)
                .padding(.bottom, 5)

            Text("Dorm Building: \(item.dormBuilding)")
                .font(.headline)
                .padding(.bottom, 10)

            Spacer()
        }
        .padding()
        .navigationBarTitle("Item Details", displayMode: .inline)
    }
}

struct ListOfItems: View {
    @ObservedObject var RentalObject: RentalList
    
    
    @State private var showingDataEntryView = false

       var body: some View {
           NavigationView {
               List(RentalObject.RentalItems) { item in
                   ItemRow(item: item)
               }
               .navigationTitle("List of Items")
               .navigationBarItems(trailing:
                   Button(action: {
                       showingDataEntryView.toggle()
                   }) {
                       Image(systemName: "plus.circle.fill")
                           .font(.title)
                           .foregroundColor(.green)
                   }
               )
               .sheet(isPresented: $showingDataEntryView) {
                   DataEntryView(addItem: { newItem in
                       RentalObject.RentalItems.append(newItem)
                   }, rentalObject: RentalObject)
               }
           }
       }
   }

