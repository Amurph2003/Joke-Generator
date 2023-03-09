//
//  Joke_GeneratorApp.swift
//  Joke Generator
//
//  Created by Alex Murphy on 9/28/22.
//

import SwiftUI
import CoreData

@main
struct Joke_GeneratorApp: App {
    @StateObject private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
