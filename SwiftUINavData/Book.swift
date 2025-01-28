//
// File: Book.swift
// Project: SwiftUINavData
// 
// Created by SCOTT CROWDER on 1/28/25.
// 
// Copyright © Playful Logic Studios, LLC 2025. All rights reserved.
// 


import SwiftData

@Model
class Book {
    var name: String
    var author: String
    
    init(name: String, author: String) {
        self.name = name
        self.author = author
    }
}
