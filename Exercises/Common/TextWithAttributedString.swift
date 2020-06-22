//
//  TextWithAttributedString.swift
//  Exercises
//
//  Created by Carlos Diaz on 21/06/20.
//  Copyright © 2020 Carlos Diaz. All rights reserved.
//

import UIKit
import SwiftUI

struct TextWithAttributedString: UIViewRepresentable {
    
    var attributedString: NSMutableAttributedString
    
    func makeUIView(context: Context) -> UILabel {
        let label = UILabel()
        label.numberOfLines = 0
        label.lineBreakMode = .byTruncatingTail
        label.autoresizesSubviews = true
        label.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        label.textAlignment = .left
        return label
    }
    
    func updateUIView(_ uiView: UILabel, context: UIViewRepresentableContext<TextWithAttributedString>) {
        uiView.attributedText = attributedString
    }
}
