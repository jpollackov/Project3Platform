//
//  ContentView.swift
//  PlatformProject3
//
//  Created by  Jack Pollackov on 12/4/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var rentalList = RentalList()

    var body: some View {
        NavigationView {
            ZStack {
                Color.black.ignoresSafeArea()

                VStack(spacing: 20) {
                    Image("Image")
                        .resizable()
                        .scaledToFit()
                    Text("DormDash Sports Rentals")
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)

                    NavigationLink(destination: ListOfItems(RentalObject: rentalList)) {
                        RectangleButton(color: Color.blue, title: "View Listings")
                    }

                    NavigationLink(destination: DataEntryView(addItem: { newItem in
                    }, rentalObject: rentalList)) {
                        Text("Submit a Rental")
                            .foregroundColor(.black)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                    }
                }
            }
            .environmentObject(rentalList) 
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
    

