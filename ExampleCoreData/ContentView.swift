//
//  ContentView.swift
//  ExampleCoreData
//
//

import SwiftUI
import CoreData

//
//struct ContentView: View {
//    @Environment(\.managedObjectContext) private var moc
//
//    @State private var lastNameFilter = "K"
//
//    var body: some View {
//        VStack {
//            Filtered_Lis(filterKey: "lastName", filterValue: lastNameFilter) { (singer: Singer) in
//                Text("\(singer.wrappedFirstName) \(singer.wrappedLastName)")
//            }
//
//
//            Button("Add Examples") {
//                let taylor = Singer(context: moc)
//                taylor.firstName = "Taylor"
//                taylor.lastName = "Swift"
//
//                let kanye = Singer(context: moc)
//                kanye.firstName = "Kanye"
//                kanye.lastName = "West"
//
//                try? moc.save()
//
//            }
//
//            Button("Show A") {
//                lastNameFilter = "A"
//            }
//
//            Button("Show W") {
//                lastNameFilter = "W"
//            }
//
//
//        }
//    }
//}



struct ContentView: View {
    
    @Environment(\.managedObjectContext) var moc
    
    @FetchRequest(entity: Country.entity(), sortDescriptors: []) var countries: FetchedResults<Country>
    
    
    var body: some View {
        VStack {
            List {
                ForEach(countries, id: \.self) { country in
                    Section(header: Text(country.wrappedLongName)) {
                        ForEach(country.candyArray, id: \.self) { candy in
                            Text(candy.wrappedName)
                        }
                        
                    }
                }
            }
            Button("Add") {
                let candy1 = Candy(context: moc)
                candy1.name = "Mars"
                candy1.origin = Country(context: moc)
                candy1.origin?.shortName = "UK"
                candy1.origin?.fullName = "United Kingdom"
                
                try? moc.save()
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//struct ContentView: View {
//    @Environment(\.managedObjectContext) private var moc
//
//    @FetchRequest(entity: Ship.entity(), sortDescriptors: [], predicate: NSPredicate(format: "NOT universe BEGINSWITH[c] %@", ["Aliens", "Puppy", "Noice"])) var ships: FetchedResults<Ship>
//
//    var body: some View {
//        VStack {
//            List(ships, id: \.self) { ship in
//                Text(ship.name ?? "unkown name")
//            }
//            Button("Add Ship") {
//                let ship1 = Ship(context: moc)
//                ship1.name = "Wowza"
//                ship1.universe = "Noice"
//
//                let ship2 = Ship(context: moc)
//                ship2.name = "Music"
//                ship2.universe = "Muoc"
//
//                try? moc.save()
//            }
//
//        }
//    }
//
//}
