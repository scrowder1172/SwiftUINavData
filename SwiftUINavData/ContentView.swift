//
// File: ContentView.swift
// Project: SwiftUINavData
// 
// Created by SCOTT CROWDER on 1/28/25.
// 
// Copyright © Playful Logic Studios, LLC 2025. All rights reserved.
// 


import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                NavigationLink("Go to Articles") {
                    ArticlesView()
                }
                .buttonStyle(.borderedProminent)
                
                NavigationLink("Go to Books") {
                    BooksView()
                }
                .buttonStyle(.borderedProminent)
                
                NavigationLink("Go to Movies") {
                    MoviesView()
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
            .navigationTitle("Main Menu")
        }
    }
}

#Preview {
    ContentView()
}
