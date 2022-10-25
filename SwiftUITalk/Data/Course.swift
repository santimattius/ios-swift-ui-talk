//
//  Course.swift
//  SwiftUITalk
//
//  Created by Santiago Mattiauda on 24/10/22.
//

import Foundation

struct Course: Identifiable, Equatable {
    let id = UUID()
    let name: String
    let description:String
    let image: String
    let free: Bool
    var level:LevelType = .beginner
    let url: String
    
}
