//
//  RequiredExtension.swift
//  Exercises
//
//  Created by Carlos Diaz on 21/06/20.
//  Copyright © 2020 Carlos Diaz. All rights reserved.
//

import Foundation

extension Collection {
    func safeContains(_ index: Index) -> Iterator.Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
