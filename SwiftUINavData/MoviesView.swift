//
// File: MoviesView.swift
// Project: SwiftUINavData
// 
// Created by SCOTT CROWDER on 1/28/25.
// 
// Copyright © Playful Logic Studios, LLC 2025. All rights reserved.
// 

import SwiftData
import SwiftUI

struct MoviesView: View {
    @Environment(\.modelContext) private var context
    
    @Query(sort: \Movie.title, order: .forward)
    
    var movies: [Movie]
    
    var body: some View {
        VStack(spacing: 16) {
            List(movies) { movie in
                VStack(alignment: .leading) {
                    Text(movie.title)
                        .font(.headline)
                    Text("Released in \(movie.releaseYear)")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
            }
            .listStyle(.plain)
            
            Button("Add Demo Movie") {
                let newMovie: Movie = Movie(
                    title: "Demo Movie \(Date().formatted())",
                    releaseYear: "1992"
                )
                context.insert(newMovie)
                try? context.save()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .navigationTitle("Movies")
    }
}

#Preview {
    MoviesView()
}
