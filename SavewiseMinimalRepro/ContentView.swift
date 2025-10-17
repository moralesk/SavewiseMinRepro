//
//  ContentView.swift
//  SavewiseMinimalRepro
//
//  Created by Kelly Morales on 10/17/25.
//

import Clerk
import SwiftUI

struct ContentView: View {
    @Environment(\.clerk)
    private var clerk

    @State
    private var isAuthPresented = false

    var body: some View {
        VStack {
            if clerk.user != nil {
                UserButton()
                    .frame(width: 36, height: 36)
            } else {
                Button("Sign in") {
                    isAuthPresented = true
                }
            }
        }
        .sheet(isPresented: $isAuthPresented) {
            AuthView()
        }
    }
}

#Preview {
    ContentView()
}
