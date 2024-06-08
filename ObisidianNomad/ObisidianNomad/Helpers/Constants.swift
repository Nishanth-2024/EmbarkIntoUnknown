//
//  Constants.swift
//  ObisidianNomad
//
//  Created by VEMULA Nishanth on 11/05/24.
//

import Foundation
import SwiftUI

struct Constants {
    
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    public static let shared = Constants()
    private init() {}
    
    var gradient1: Gradient {
        Gradient(colors: colorScheme == .dark
                 ? [.purple, .blue]
                 : [.purple, .blue])
    }
    var gradient2: Gradient {
        Gradient(colors: colorScheme == .dark
                 ? [Color(hex: 0x9795f0), Color(hex: 0xfbc8d4)]
                 : [Color(hex: 0x9795f0), Color(hex: 0xfbc8d4)])
    }
    var gradient3: Gradient {
        Gradient(colors: colorScheme == .dark
                 ? [Color(hex: 0x9795f0, alpha: 0), Color(hex: 0xfbc8d4, alpha: 0)]
                 : [Color(hex: 0x9795f0, alpha: 0), Color(hex: 0xfbc8d4, alpha: 0)])
    }
    var gradient4: Gradient {
        Gradient(colors: [
            Color.customBackground1.opacity(0.95), Color.customBackground1.opacity(0.64), Color.customBackground1.opacity(0.95), Color.customBackground1.opacity(0.64),
            Color.customBackground1.opacity(0.95), Color.customBackground1.opacity(0.64), Color.customBackground1.opacity(0.95), Color.customBackground1.opacity(0.64),
            Color.customBackground1.opacity(0.95), Color.customBackground1.opacity(0.64), Color.customBackground1.opacity(0.95), Color.customBackground1.opacity(0.64),
            Color.customBackground1.opacity(0.95), Color.customBackground1.opacity(0.7), Color.customBackground1.opacity(0.95), Color.customBackground1.opacity(0.64),
            Color.customBackground1.opacity(0.95), Color.customBackground1.opacity(0.7), Color.customBackground1.opacity(0.95), Color.customBackground1.opacity(0.64)
        ])
    }
    var gradient5: Gradient {
        Gradient(colors: [#colorLiteral(red: 0.9586862922, green: 0.660125792, blue: 0.8447988033, alpha: 1), #colorLiteral(red: 0.8714533448, green: 0.723166883, blue: 0.9342088699, alpha: 1), #colorLiteral(red: 0.7458761334, green: 0.7851135731, blue: 0.9899476171, alpha: 1), #colorLiteral(red: 0.4398113191, green: 0.8953480721, blue: 0.9796616435, alpha: 1), #colorLiteral(red: 0.3484552801, green: 0.933657825, blue: 0.9058339596, alpha: 1), #colorLiteral(red: 0.5567936897, green: 0.9780793786, blue: 0.6893508434, alpha: 1)].map { Color(uiColor: $0)})
    }
    var gradient6: Gradient {
        /*
         Text("Hello World")
             .padding()
             .foregroundStyle(.white)
             .font(.largeTitle)
             .background(
                 LinearGradient(gradient: Gradient(colors: [.white, .red, .black]),
                                startPoint: .leading,
                                endPoint: .trailing)
             )
         */
        Gradient(colors: [.white, .red, .black])
    }
    var gradient7: Gradient {
        /*
         Circle()
             .fill(
                 AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]),
                                 center: .center)
             )
             .frame(width: 200, height: 200)
         */
        Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red])
    }
    var gradient8: Gradient {
        /*
         Circle()
             .fill(
                 RadialGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple]),
                                center: .center,
                                startRadius: 50,
                                endRadius: 100)
             )
             .frame(width: 200, height: 200)
         */
        Gradient(colors: [.red, .yellow, .green, .blue, .purple])
    }
}
