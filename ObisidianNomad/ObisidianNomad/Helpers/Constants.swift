//
//  Constants.swift
//  ObisidianNomad
//
//  Created by VEMULA Nishanth on 11/05/24.
//

import Foundation
import SwiftUI

struct Constants {
    
    public static let shared = Constants()
    private init() {}
    
    var gradient1: Gradient = Gradient(colors: [.purple, .blue])
    var gradient2: Gradient = Gradient(colors: [Color(hex: 0x9795f0), Color(hex: 0xfbc8d4)])
    var gradient3: Gradient = Gradient(colors: [Color(hex: 0x9795f0, alpha: 0), Color(hex: 0xfbc8d4, alpha: 0)])
    var gradient4: Gradient = Gradient(colors: [
        Color.accentColor.opacity(0.8), Color.accentColor.opacity(0.7), Color.accentColor.opacity(0.8), Color.accentColor.opacity(0.7),
        Color.accentColor.opacity(0.8), Color.accentColor.opacity(0.7), Color.accentColor.opacity(0.8), Color.accentColor.opacity(0.7),
        Color.accentColor.opacity(0.8), Color.accentColor.opacity(0.7), Color.accentColor.opacity(0.8), Color.accentColor.opacity(0.7),
        Color.accentColor.opacity(0.8), Color.accentColor.opacity(0.7), Color.accentColor.opacity(0.8), Color.accentColor.opacity(0.7),
        Color.accentColor.opacity(0.8), Color.accentColor.opacity(0.7), Color.accentColor.opacity(0.8), Color.accentColor.opacity(0.7)
    ])
}
