//
// File: ArticlesDetailView.swift
// Project: SwiftUINavData
// 
// Created by SCOTT CROWDER on 1/28/25.
// 
// Copyright © Playful Logic Studios, LLC 2025. All rights reserved.
// 

import SwiftData
import SwiftUI

struct ArticlesDetailView: View {
    @Environment(\.modelContext) private var context
    
    @Bindable var article: Article
    
    var body: some View {
        Form {
            TextField("Title", text: $article.title)
            TextField("Body", text: $article.body, axis: .vertical)
                .lineLimit(3)
        }
        .navigationTitle("Edit Article")
        .onDisappear {
            try? context.save()
        }
    }
}
