//
//  VideoModel.swift
//  Africa
//
//  Created by Cristina on 2023-07-14.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
}
