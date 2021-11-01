////
////  Filtered List.swift
////  ExampleCoreData
////
////  Created by Yash Poojary on 01/11/21.
////
//
//import CoreData
//import SwiftUI
//
////struct Filtered_Lis<T: NSManagedObject, Content: View >: View {
////    var fetchRequest: FetchRequest<T>
////    let content: (T) -> Content
////
////
////    var body: some View {
////        List(fetchRequest.wrappedValue, id: \.self) { singer in
////            content(singer)
////        }
////    }
////
////
////    init(filterKey: String, filterValue: String, @ViewBuilder content: @escaping (T) -> Content) {
////        fetchRequest = FetchRequest<T>(entity: T.entity(), sortDescriptors: [], predicate: NSPredicate(format: "%K BEGINSWITH %@", filterKey, filterValue))
////        self.content = content
////    }
////}
//
//
//struct Filtered_Lis<T: NSManagedObject, Content: View>: View {
//    var fetchRequest: FetchRequest<T>
//    let content: (T) -> Content
//
//    var body: some View {
//        List(fetchRequest.wrappedValue, id: \.self) { singer in
//            content(singer)
//        }
//    }
//
//
//    init(filterKey: String, filterValue:String, @ViewBuilder content: @escaping (T) -> Content) {
//        fetchRequest = FetchRequest<T>(entity: T.entity(), sortDescriptors: [], predicate: NSPredicate(format: "%K BEGINSWITH %@", filterKey, filterValue))
//        self.content = content
//    }
//}
