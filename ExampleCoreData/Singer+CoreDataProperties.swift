//
//  Singer+CoreDataProperties.swift
//  ExampleCoreData
//
//  Created by Yash Poojary on 01/11/21.
//
//

import Foundation
import CoreData


extension Singer {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Singer> {
        return NSFetchRequest<Singer>(entityName: "Singer")
    }

    @NSManaged public var firstName: String?
    @NSManaged public var lastName: String?
    
    public var wrappedFirstName: String {
        return firstName ?? "Unkown"
    }
    
    public var wrappedLastName: String {
        return lastName ?? "Unkown"
    }
}

extension Singer : Identifiable {

}
