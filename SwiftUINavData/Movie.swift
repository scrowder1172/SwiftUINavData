//
// File: Movie.swift
// Project: SwiftUINavData
// 
// Created by SCOTT CROWDER on 1/28/25.
// 
// Copyright © Playful Logic Studios, LLC 2025. All rights reserved.
// 


import SwiftData

@Model
class Movie {
    var title: String
    var releaseYear: String
    
    init(title: String, releaseYear: String) {
        self.title = title
        self.releaseYear = releaseYear
    }
}
