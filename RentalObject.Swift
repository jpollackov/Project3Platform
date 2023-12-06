import Foundation
import SwiftUI

import SwiftUI

class RentalsManager: ObservableObject {
    var RentalItems = [
        Item(name: "football", itemPrice: "9", renterName: "Alex", renterPhoneNum: "7638764438", dormBuilding: "Alumni"),
        Item(name: "bocce ball set", itemPrice: "12", renterName: "Anthony", renterPhoneNum: "2458608903", dormBuilding: "Corr"),
        Item(name: "badminton rackets and birdie", itemPrice: "10", renterName: "Linda", renterPhoneNum: "6082939012", dormBuilding: "Welsh"),
        Item(name: "frisbee", itemPrice: "7", renterName: "Hannah", renterPhoneNum: "9078054304", dormBuilding: ""),
        Item(name: "soccer ball", itemPrice: "8", renterName: "Samantha", renterPhoneNum: "9885343211", dormBuilding: "St. Monica"),
        Item(name: "volley ball", itemPrice: "9", renterName: "Mikey", renterPhoneNum: "5456998323", dormBuilding: "Rudolph"),
        Item(name: "ping-pong ball and two paddles", itemPrice: "12", renterName: "Katie", renterPhoneNum: "3275409677", dormBuilding: "Welsh"),
        Item(name: "spike ball set", itemPrice: "16", renterName: "Matthew", renterPhoneNum: "8785410906", dormBuilding: "Sheehan"),
        Item(name: "basketball", itemPrice: "6", renterName: "Lilly", renterPhoneNum: "5487796385", dormBuilding: "Jackson"),
        Item(name: "golf club set and golf ball", itemPrice: "17", renterName: "Logan", renterPhoneNum: "6785465590", dormBuilding: "Alumni"),
        Item(name: "basketball", itemPrice: "8", renterName: "Andrew", renterPhoneNum: "7589907124", dormBuilding: "Simpson"),
        Item(name: "baseball and mitt", itemPrice: "10", renterName: "Jake", renterPhoneNum: "82905083749", dormBuilding: "Stanford"),
        Item(name: "jump rope", itemPrice: "3", renterName: "Christopher", renterPhoneNum: "2843887208", dormBuilding: "Sullivan"),
        Item(name: "soccer ball", itemPrice: "5", renterName: "Christopher", renterPhoneNum: "2843887208", dormBuilding: "Sullivan"),
        Item(name: "spike ball net and ball", itemPrice: "14", renterName: "Nicole", renterPhoneNum: "5478976604", dormBuilding: "Kleck"),
        Item(name: "volley ball and portable net", itemPrice: "22", renterName: "Cassy", renterPhoneNum: "3459286030", dormBuilding: "Sheehan"),
        Item(name: "frisbee", itemPrice: "6", renterName: "Lauren", renterPhoneNum: "3746587612", dormBuilding: "Sullivan")
    ]

    func AddListing(var_name: String, var_itemPrice: String, var_renterName: String, var_renterPhoneNum: String, var_dormBuilding: String) {
        RentalItems.append([name: var_name, itemPrice: var_itemPrice, renterName: var_renterName, renterPhoneNum: var_renterPhoneNum, dormBuilding: var_dormBuilding])
    }
}