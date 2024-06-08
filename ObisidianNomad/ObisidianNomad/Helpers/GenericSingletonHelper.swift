//
//  GenericSingletonHelper.swift
//  ObisidianNomad
//
//  Created by VEMULA Nishanth on 18/05/24.
//

import Foundation
import UIKit

final class GenericSingletonHelper: ObservableObject {
    public static let shared: GenericSingletonHelper = GenericSingletonHelper()
    @Published private(set) var orientation = UIDevice.current.orientation
    private init() {
        NotificationCenter.default.addObserver(forName: UIDevice.orientationDidChangeNotification, object: nil, queue: .main) { [weak self] _ in
                    self?.orientation = UIDevice.current.orientation
                }
    }
}
