//
//  SpinnerController.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 08/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation
import CoreData

final class CoreDataStack {

    static let shared = CoreDataStack()

    private lazy var persistentContainer: NSPersistentCloudKitContainer = {
        let container = NSPersistentCloudKitContainer(name: .modelName)
        container.loadPersistentStores { _, error in
            if let error = error as NSError? {
                print("Unresolved error \(error), \(error.userInfo)")
            }
        }
        return container
    }()

    lazy var managedContext: NSManagedObjectContext = {
        return self.persistentContainer.viewContext
    }()

    func saveCurrentContext () {
        guard managedContext.hasChanges else { return }
        do {
            try managedContext.save()
        } catch let error as NSError {
            print("Unresolved error \(error), \(error.userInfo)")
        }
    }
}

private extension String {

    static let modelName = "ZeroWasteFriendly"
}
