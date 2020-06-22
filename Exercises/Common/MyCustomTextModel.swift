//
//  MyCustomTextModel.swift
//  Exercises
//
//  Created by Carlos Diaz on 21/06/20.
//  Copyright © 2020 Carlos Diaz. All rights reserved.
//

import UIKit

struct MyCustomTextModel {
    
    func myCustomAttributedString(_ text: String, fonts: [UIFont] = [], colors: [UIColor] = [] ) -> NSMutableAttributedString {
        let myTestString = text
        let arrayString = text.split(separator: " ")
        let attributedString = NSMutableAttributedString(string: myTestString)
        var location = 0
        var length = 0
        let arrayCount = arrayString.count - 1
        
        for index in 0...arrayCount {
            let textString = String(arrayString[index])
            length = index == arrayCount ? textString.count : textString.count + 1
            let font: UIFont = fonts.safeContains(index) ?? UIFont(name: "Chalkduster", size: 18)!
            let color: UIColor = colors.safeContains(index) ?? UIColor.black
            
            let range = NSRange(location: location, length: length)
            attributedString.addAttributes(getAttributes(text: textString, font: font, color: color), range: range)
            location += length
        }

        return attributedString
    }
    
    private func getAttributes(text: String, font: UIFont, color: UIColor) -> [NSAttributedString.Key : Any] {
        return [NSAttributedString.Key.font: font, .foregroundColor: color]
    }
}
