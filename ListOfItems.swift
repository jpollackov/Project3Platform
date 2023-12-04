//
//  ListOfItems.swift
//  Project 3
//
//  Created by Ryan Loftus on 12/4/23.
//

import Foundation
import SwiftUI

// A struct to store exactly one restaurant's data.
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
        Text("Listing: \(item.name)")
    }
}

let items = [
        Item(name: "football", itemPrice: "9", renterName: "Alex", renterPhoneNum: "7638764438", dormBuilding: "Alumni", image: ""),
        Item(name: "bocce ball set", itemPrice: "12", renterName: "Anthony", renterPhoneNum: "2458608903", dormBuilding: "Corr", image: ""),
        Item(name: "badminton rackets and birdie", itemPrice: "10", renterName: "Linda", renterPhoneNum: "6082939012", dormBuilding: "Welsh", image: ""),
        Item(name: "frisbee", itemPrice: "7", renterName: "Hannah", renterPhoneNum: "9078054304", dormBuilding: "", image: ""),
        Item(name: "soccer ball", itemPrice: "8", renterName: "Samantha", renterPhoneNum: "9885343211", dormBuilding: "St. Monica", image: ""),
        Item(name: "volley ball", itemPrice: "9", renterName: "Mikey", renterPhoneNum: "5456998323", dormBuilding: "Rudolph", image: ""),
        Item(name: "ping-pong ball and two paddles", itemPrice: "12", renterName: "Katie", renterPhoneNum: "3275409677", dormBuilding: "Welsh", image: ""),
        Item(name: "spike ball set", itemPrice: "16", renterName: "Matthew", renterPhoneNum: "8785410906", dormBuilding: "Sheehan", image: ""),
        Item(name: "basketball", itemPrice: "6", renterName: "Lilly", renterPhoneNum: "5487796385", dormBuilding: "Jackson", image: ""),
        Item(name: "golf club set and golf ball", itemPrice: "17", renterName: "Logan", renterPhoneNum: "6785465590", dormBuilding: "Alumni", image: ""),
        Item(name: "basketball", itemPrice: "8", renterName: "Andrew", renterPhoneNum: "7589907124", dormBuilding: "Simpson", image: ""),
        Item(name: "baseball and mitt", itemPrice: "10", renterName: "Jake", renterPhoneNum: "82905083749", dormBuilding: "Stanford", image: ""),
        Item(name: "jump rope", itemPrice: "3", renterName: "Christopher", renterPhoneNum: "2843887208", dormBuilding: "Sullivan", image: ""),
        Item(name: "soccer ball", itemPrice: "5", renterName: "Christopher", renterPhoneNum: "2843887208", dormBuilding: "Sullivan", image: ""),
        Item(name: "spike ball net and ball", itemPrice: "14", renterName: "Nicole", renterPhoneNum: "5478976604", dormBuilding: "Kleck", image: ""),
        Item(name: "volley ball and portable net", itemPrice: "22", renterName: "Cassy", renterPhoneNum: "3459286030", dormBuilding: "Sheehan", image: ""),
        Item(name: "frisbee", itemPrice: "6", renterName: "Lauren", renterPhoneNum: "3746587612", dormBuilding: "Sullivan", image: "")
    ]

var sublistLen = 5
sublist = Array(ListOfItems[0..<x])

func updateSublist (
        sublistLen = sublistLen + 3
        sublist = Array(ListOfItems[0..<x])
)

// Create three restaurants, then show them in a list.
struct ListOfItems: View {
    
    sublist
    RectangleButton("Load More Items") {
    updateSublist
    }

    var body: some View {
        List(items) { item in
            ItemRow(item: item)
        }
    }
}

struct RectangleButton: View {
    var color: Color
    var title: String
    
    var body: some View {
        Text(title)
            .foregroundColor(.black)
            .padding()
            .background(color)
            .cornerRadius(10)
    }
}

