//
// File: BooksView.swift
// Project: SwiftUINavData
// 
// Created by SCOTT CROWDER on 1/28/25.
// 
// Copyright © Playful Logic Studios, LLC 2025. All rights reserved.
// 

import SwiftData
import SwiftUI

struct BooksView: View {
    @Environment(\.modelContext) private var context
    
    @Query(sort: \Book.name, order: .forward)
    
    var books: [Book]
    
    var body: some View {
        VStack(spacing: 16) {
            List(books) { book in
                VStack(alignment: .leading) {
                    Text(book.name)
                        .font(.headline)
                    Text("by: \(book.author)")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
            }
            .listStyle(.plain)
            
            Button("Add Demo Book") {
                let newBook: Book = Book(
                    name: "Demonstration Book",
                    author: "Random R. Person"
                )
                context.insert(newBook)
                try? context.save()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .navigationTitle("Books")
    }
}

#Preview {
    BooksView()
}
