//
// File: ArticlesView.swift
// Project: SwiftUINavData
// 
// Created by SCOTT CROWDER on 1/28/25.
// 
// Copyright © Playful Logic Studios, LLC 2025. All rights reserved.
// 

import SwiftData
import SwiftUI

struct ArticlesView: View {
    
    @Environment(\.modelContext) private var context
    @Query(sort: \Article.title, order: .forward)
    var articles: [Article]
    
    var body: some View {
        VStack(spacing: 16) {
            List(articles) { article in
                NavigationLink(destination: ArticlesDetailView(article: article)) {
                    VStack(alignment: .leading) {
                        Text(article.title)
                            .font(.headline)
                        Text(article.body)
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                }
            }
            .listStyle(.plain)
            
            Button("Add Demo Article") {
                let newArticle: Article = Article(
                    title: "New Article \(Date().formatted())",
                    body: "This is a sample article body."
                )
                
                context.insert(newArticle)
                try? context.save()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .navigationTitle("Articles")
    }
}

#Preview {
    ArticlesView()
}
