//
//  FilteredList.swift
//  ExampleCoreData
//
//  Created by Yash Poojary on 03/11/21.
//

import SwiftUI
import CoreData


struct FilteredList<T: NSManagedObject, Content: View>: View {
    var fetchRequest: FetchRequest<T>
    var content: (T) -> Content
    
    
    var body: some View {
        List(fetchRequest.wrappedValue, id: \.self) { singer in
            content(singer)
        }
    }
    
    
    init(filterKey: String, filterValue: String, sortKey: [NSSortDescriptor], predicateParameter: predicateParam, @ViewBuilder content: @escaping (T) -> Content) {
        
        switch predicateParameter {
            case .beginsWith:
            fetchRequest = FetchRequest<T>(entity: T.entity(), sortDescriptors: sortKey, predicate: NSPredicate(format: "%K \(predicateParam.beginsWith) %@", filterKey, filterValue))
            case .contains:
                fetchRequest = FetchRequest<T>(entity: T.entity(), sortDescriptors: sortKey, predicate: NSPredicate(format: "%K \(predicateParam.contains) %@", filterKey, filterValue))
        }
        
        self.content = content
    
    }
    
    enum predicateParam: String {
        case beginsWith = "BEGINSWITH"
        case contains = "CONTAINS"
    }
    
}
