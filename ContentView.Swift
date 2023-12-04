//
//  ContentView.swift
//  PlatformProject3
//
//  Created by  Jack Pollackov on 12/4/23.
//

import SwiftUI

struct ContentView: View {
    @State private var monthlyIncome = 0.0
    @State private var variableCosts = 0.0
    @State private var fixedCosts = 0.0
    @State private var variableremainingIncome = 0.0
    @State private var taxAmount = 0.0
    //@State private var v_expenses: [Expense] = []
    // @State private var expenses: [Expense] = []
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.black.ignoresSafeArea()
                
                VStack(spacing: 20) {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                    Text("Welcome to: DormDash Sports Rentals")
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(white: 90))
                    
                    // Button to navigate to a new view
                    NavigationLink(destination: YourNewView()) {
                        RectangleButton(color: Color.blue, title: "See Rentals")
                    }
                }
            }
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

struct YourNewView: View {
    var body: some View {
        Text("This is the new view!") //put in file here
    }
}


