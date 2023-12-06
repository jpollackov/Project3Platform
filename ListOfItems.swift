//
//  ListOfItems.swift
//  Project 3
//
//  Created by Ryan Loftus on 12/4/23.
//

import Foundation
import SwiftUI

// A struct to store exactly one item's data.
struct Item: Identifiable {
    let id = UUID()
    let name: String
    let itemPrice: String
    let renterName: String
    let renterPhoneNum: String
    let dormBuilding: String
    let image: String
}

// A view that shows the data for one Item.
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

// A view that displays detailed information about a specific item.
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

            // Add more details as needed

            Spacer() // Push content to the top
        }
        .padding()
        .navigationBarTitle("Item Details", displayMode: .inline)
    }
}

// Create three items, then show them in a list.
struct ListOfItems: View {
    @ObservedObject var rentalsManager: RentalsManager
    @State private var items = [
        Item(name: "Football", itemPrice: "9", renterName: "Alex", renterPhoneNum: "7638764438", dormBuilding: "Alumni", image: ""),
        Item(name: "Bocce ball set", itemPrice: "12", renterName: "Anthony", renterPhoneNum: "2458608903", dormBuilding: "Corr", image: ""),
        Item(name: "Badminton rackets and birdie", itemPrice: "10", renterName: "Linda", renterPhoneNum: "6082939012", dormBuilding: "Welsh", image: ""),
        Item(name: "Frisbee", itemPrice: "7", renterName: "Hannah", renterPhoneNum: "9078054304", dormBuilding: "", image: ""),
        Item(name: "Soccer ball", itemPrice: "8", renterName: "Samantha", renterPhoneNum: "9885343211", dormBuilding: "St. Monica", image: ""),
        Item(name: "Volley ball", itemPrice: "9", renterName: "Mikey", renterPhoneNum: "5456998323", dormBuilding: "Rudolph", image: ""),
        Item(name: "Ping-pong ball and two paddles", itemPrice: "12", renterName: "Katie", renterPhoneNum: "3275409677", dormBuilding: "Welsh", image: ""),
        Item(name: "Spike ball set", itemPrice: "16", renterName: "Matthew", renterPhoneNum: "8785410906", dormBuilding: "Sheehan", image: ""),
        Item(name: "Basketball", itemPrice: "6", renterName: "Lilly", renterPhoneNum: "5487796385", dormBuilding: "Jackson", image: ""),
        Item(name: "Golf club set and golf ball", itemPrice: "17", renterName: "Logan", renterPhoneNum: "6785465590", dormBuilding: "Alumni", image: ""),
        Item(name: "Basketball", itemPrice: "8", renterName: "Andrew", renterPhoneNum: "7589907124", dormBuilding: "Simpson", image: ""),
        Item(name: "Baseball and mitt", itemPrice: "10", renterName: "Jake", renterPhoneNum: "82905083749", dormBuilding: "Stanford", image: ""),
        Item(name: "Jump rope", itemPrice: "3", renterName: "Christopher", renterPhoneNum: "2843887208", dormBuilding: "Sullivan", image: ""),
        Item(name: "Soccer ball", itemPrice: "5", renterName: "Christopher", renterPhoneNum: "2843887208", dormBuilding: "Sullivan", image: ""),
        Item(name: "Spike ball net and ball", itemPrice: "14", renterName: "Nicole", renterPhoneNum: "5478976604", dormBuilding: "Kleck", image: ""),
        Item(name: "Volley ball and portable net", itemPrice: "22", renterName: "Cassy", renterPhoneNum: "3459286030", dormBuilding: "Sheehan", image: ""),
        Item(name: "Frisbee", itemPrice: "6", renterName: "Lauren", renterPhoneNum: "3746587612", dormBuilding: "Sullivan", image: "")
    ]
    
    
    @State private var showingDataEntryView = false

       var body: some View {
           NavigationView {
               List(items) { item in
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
                   // Pass the addItem function, rentalsManager, and the items array as a binding to DataEntryView
                   DataEntryView(addItem: { newItem in
                       items.append(newItem)
                   }, rentalsManager: rentalsManager)
               }
           }
       }
   }

