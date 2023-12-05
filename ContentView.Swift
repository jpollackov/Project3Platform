//
//  ContentView.swift
//  PlatformProject3
//
//  Created by  Jack Pollackov on 12/4/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var rentalsManager = RentalsManager()

    var body: some View {
        NavigationView {
            ZStack {
                Color.white.ignoresSafeArea()  // Change the background color to white

                VStack(spacing: 20) {
                    Image("Image")
                        .resizable()
                        .scaledToFit()
                    Text("DormDash Sports Rentals")
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)  // Change the text color to black

                    NavigationLink(destination: ListOfItems(rentalsManager: rentalsManager)) {
                        RectangleButton(color: Color.blue, title: "View Listings")
                    }

                    NavigationLink(destination: DataEntryView(addItem: { newItem in
                        // Handle adding the new item to your data source or perform any necessary logic
                    }, rentalsManager: rentalsManager)) {
                        Text("Submit a Rental")
                            .foregroundColor(.black)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                    }
                }
            }
            .environmentObject(rentalsManager) // Inject RentalsManager into the environment
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    
//    struct AddRentalView: View {
//        var body: some View {
//            Text("This is the Add Rental view!")
//        }
//    }


