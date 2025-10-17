//
//  SavewiseMinimalReproApp.swift
//  SavewiseMinimalRepro
//
//  Created by Kelly Morales on 10/17/25.
//

import Clerk
import SwiftUI

@main
struct SavewiseMinimalReproApp: App {
    @State private var clerk = Clerk.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.clerk, clerk)
                .task {
                    clerk.configure(publishableKey: "pk_test_ZXBpYy1tb2xsdXNrLTExLmNsZXJrLmFjY291bnRzLmRldiQ")
                    try? await clerk.load()
                }
        }
    }
}
