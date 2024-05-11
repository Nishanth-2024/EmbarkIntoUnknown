//
//  ONProtocols.swift
//  ObisidianNomad
//
//  Created by VEMULA Nishanth on 10/05/24.
//

import Foundation
import SwiftUI

extension Color {
  init(hex: UInt, alpha: Double = 1) {
    self.init(
      .sRGB,
      red: Double((hex >> 16) & 0xff) / 255,
      green: Double((hex >> 08) & 0xff) / 255,
      blue: Double((hex >> 00) & 0xff) / 255,
      opacity: alpha
    )
  }
  init(r: Double, g: Double, b: Double, alpha: Double = 1) {
    self.init(
      .sRGB,
      red: Double(r) / 255,
      green: Double(g) / 255,
      blue: Double(b) / 255,
      opacity: alpha
    )
  }
}
